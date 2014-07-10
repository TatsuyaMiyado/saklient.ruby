# -*- encoding: UTF-8 -*-

require_relative 'http_forbidden_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作は許可されていません. XHRまたはAPIキーによるアクセスのみ許可されています.
      class AccessXhrOrApiKeyException < Saclient::Cloud::Errors::HttpForbiddenException

        # (static var) @@default_message = '要求された操作は許可されていません。XHRまたはAPIキーによるアクセスのみ許可されています。'

      end

    end
  end
end
