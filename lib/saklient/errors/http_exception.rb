# -*- encoding: UTF-8 -*-


module Saklient
  module Errors

    class HttpException < StandardError

      # @return [Fixnum]
      attr_accessor :status

      # @return [String]
      attr_accessor :code

      # @param [Fixnum] status
      # @param [String] code
      # @param [String] message
      def initialize(status, code = nil, message = '')
        super(message)
        @status = status
        @code = code
      end

    end

  end
end
