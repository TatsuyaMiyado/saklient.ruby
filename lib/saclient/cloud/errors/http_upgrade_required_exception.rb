# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Cloud
    module Errors

      # HTTPエラー. Upgrade Required.
      class HttpUpgradeRequiredException < Saclient::Cloud::Errors::HttpException

        # (static var) @@default_message = 'HTTPエラー。Upgrade Required.'

      end

    end
  end
end
