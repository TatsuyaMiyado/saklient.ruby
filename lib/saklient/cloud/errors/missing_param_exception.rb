# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_bad_request_exception'

module Saklient
  module Cloud
    module Errors

      # 不適切な要求です. 必要なパラメータが指定されていません.
      class MissingParamException < Saklient::Errors::HttpBadRequestException

        # @param [Fixnum] status
        # @param [String] code
        # @param [String] message
        def initialize(status, code = nil, message = '')
          super(status, code, (message).nil? || message == '' ? '不適切な要求です。必要なパラメータが指定されていません。' : message)
        end

      end

    end
  end
end
