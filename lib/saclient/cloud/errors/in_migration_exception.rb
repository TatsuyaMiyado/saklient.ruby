# -*- encoding: UTF-8 -*-

require_relative 'http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. このリソースから他のリソースへのコピー処理が進行中です. 完了後に再度お試しください.
      class InMigrationException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。このリソースから他のリソースへのコピー処理が進行中です。完了後に再度お試しください。'

      end

    end
  end
end
