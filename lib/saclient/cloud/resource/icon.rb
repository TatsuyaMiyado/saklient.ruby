# -*- encoding: UTF-8 -*-

require_relative '../client.rb'
require_relative 'resource.rb'

module Saclient
  module Cloud
    module Resource
      
      # アイコンのリソース情報へのアクセス機能や操作機能を備えたクラス.
      class Icon < Saclient::Cloud::Resource::Resource
        
        # @return [String]
        protected
        attr_accessor :m_id
        
        # @return [String]
        protected
        attr_accessor :m_name
        
        # @return [String]
        protected
        attr_accessor :m_url
        
        # @private
        # @return [String]
        protected
        def _api_path()
          "/icon"
        end
        
        # @private
        # @return [String]
        protected
        def _root_key()
          "Icon"
        end
        
        # @private
        # @return [String]
        protected
        def _root_key_m()
          "Icons"
        end
        
        # @private
        # @return [String]
        public
        def _id()
          get_id()
        end
        
        # このローカルオブジェクトに現在設定されているリソース情報をAPIに送信し, 新しいインスタンスを作成します.
        # 
        # @return [Icon] this
        public
        def create()
          _create()
        end
        
        # このローカルオブジェクトに現在設定されているリソース情報をAPIに送信し, 上書き保存します.
        # 
        # @return [Icon] this
        public
        def save()
          _save()
        end
        
        # 最新のリソース情報を再取得します.
        # 
        # @return [Icon] this
        public
        def reload()
          _reload()
        end
        
        # @private
        # @param [Saclient::Cloud::Client] client
        # @param [any] r
        public
        def initialize(client, r)
          super(client)
          api_deserialize(r)
        end
        
        # @return [bool]
        protected
        attr_accessor :n_id
        
        # (This method is generated in Translator_default#buildImpl)
        # 
        # @return [String]
        protected
        def get_id()
          @m_id
        end
        
        # @return [String]
        public
        attr_reader :id
        def id() get_id end
        
        # @return [bool]
        protected
        attr_accessor :n_name
        
        # (This method is generated in Translator_default#buildImpl)
        # 
        # @return [String]
        protected
        def get_name()
          @m_name
        end
        
        # @return [String]
        public
        attr_reader :name
        def name() get_name end
        
        # @return [bool]
        protected
        attr_accessor :n_url
        
        # (This method is generated in Translator_default#buildImpl)
        # 
        # @return [String]
        protected
        def get_url()
          @m_url
        end
        
        # @return [String]
        public
        attr_reader :url
        def url() get_url end
        
        # (This method is generated in Translator_default#buildImpl)
        # 
        # @param [any] r
        public
        def api_deserialize(r)
          @is_incomplete = true
          if (!r.nil? and r.key?("ID".to_sym))
            @m_id = (r["ID".to_sym]).nil? ? nil : r["ID".to_sym].to_s()
            @n_id = false
          else
            @is_incomplete = false
          end
          if (!r.nil? and r.key?("Name".to_sym))
            @m_name = (r["Name".to_sym]).nil? ? nil : r["Name".to_sym].to_s()
            @n_name = false
          else
            @is_incomplete = false
          end
          if (!r.nil? and r.key?("URL".to_sym))
            @m_url = (r["URL".to_sym]).nil? ? nil : r["URL".to_sym].to_s()
            @n_url = false
          else
            @is_incomplete = false
          end
        end
        
        # (This method is generated in Translator_default#buildImpl)
        # 
        # @param [bool] withClean
        # @return [any]
        public
        def api_serialize(withClean=false)
          ret = {}
          if withClean || @n_id
            ret["ID".to_sym] = @m_id
          end
          if withClean || @n_name
            ret["Name".to_sym] = @m_name
          end
          if withClean || @n_url
            ret["URL".to_sym] = @m_url
          end
          ret
        end
        
      end
      
    end
  end
end