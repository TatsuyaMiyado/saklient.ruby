# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_bad_request_exception'

module Saklient
  module Cloud
    module Errors

      # 不適切な要求です. パラメータで指定されたリソースが存在しません. IDをご確認ください.
      class ParamResNotFoundException < Saklient::Errors::HttpBadRequestException

        # (static var) @@default_message = '不適切な要求です。パラメータで指定されたリソースが存在しません。IDをご確認ください。'

      end

    end
  end
end