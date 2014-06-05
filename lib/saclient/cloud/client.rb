# -*- encoding: UTF-8 -*-
require 'net/https'
require 'json'
require 'uri'

# example
#
#   client = saclient::cloud::Client.new 'token', 'secret'
#   servers = client.request 'GET', '/server' 

module Saclient
  module Cloud
    class Client
      def initialize(token, secret)
        @config = {
          api_root: 'https://secure.sakura.ad.jp/cloud/',
          api_root_suffix: nil
        }
        setAccessKey token, secret
        self
      end

      def println(msg)
        $stderr.puts msg
      end

      def cloneInstance
        instance = self.class.new(@config[:token], @config[:secret])
        instance.setApiRoot @config[:api_root]
        instance.setApiRootSuffix @config[:api_root_suffix]

        instance
      end

      def setApiRoot(url)
        @config[:api_root] = url
      end

      def setApiRootSuffix(suffix)
        @config[:api_root_suffix] = suffix
      end

      def setAccessKey(token, secret)
        @config[:token]  = token
        @config[:secret] = secret
      end

      def request(method, path, params={})
        json = params.to_json
        
        unless path =~ /^http/
          url_root = @config[:api_root]
          if @config[:api_root_suffix]
            if @config[:api_root_suffix] =~ /is1[v-z]/
              url_root = url_root.sub %r|/cloud/$|, '/cloud-test/'
            end
            url_root += @config[:api_root_suffix]
            url_root = url_root.sub %r|/?$|, '/'
          end
          url = url_root + 'api/cloud/1.1' + path
        end
        
        url += '?' + URI.escape(json) if method == 'GET' and !params.empty?

        #println "// APIリクエスト中: #{method} #{path}"

        parsed_url = URI.parse url

        if method == 'GET'
          req = Net::HTTP::Get.new parsed_url
        else
          req = Net::HTTP::Post.new parsed_url
          req.body = json
        end

        req.basic_auth @config[:token], @config[:secret]

        extra_headers = {
          'Content-Type'     => 'application/x-www-form-urlencoded',
          'User-Agent'       => 'sacloud-client-ruby',
          'X-Requested-With' => 'XMLHttpRequest',
          'X-Sakura-HTTP-Method' => method,
          'X-Sakura-Error-Level' => 'warning',
          'X-Sakura-Request-Format'  => 'json',
          'X-Sakura-Response-Format' => 'json',
          'X-Sakura-No-Authenticate-Header' => '1'
        }

        #println parsed_url

        extra_headers.each do |key, value|
          req[key] = value
        end
        
        http = Net::HTTP.new parsed_url.host, parsed_url.scheme == 'https' ? 443 : 80
        # http.set_debug_output($stderr) # for debugging
        if parsed_url.scheme == 'https'
          http.use_ssl = true
          # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        end
        res = http.start {|conn| conn.request req }
        
        data = JSON.parse(res.body, {:symbolize_names => true})
        data
      end
    end
  end
end