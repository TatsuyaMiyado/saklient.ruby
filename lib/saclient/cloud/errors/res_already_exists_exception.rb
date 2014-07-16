# -*- encoding: UTF-8 -*-

require_relative 'http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. このIDのリソースは既に存在します.
      class ResAlreadyExistsException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。このIDのリソースは既に存在します。'

      end

    end
  end
end