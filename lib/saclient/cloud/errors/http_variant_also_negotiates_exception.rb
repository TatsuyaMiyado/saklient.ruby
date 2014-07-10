# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Cloud
    module Errors

      # HTTPエラー. Variant Also Negotiates.
      class HttpVariantAlsoNegotiatesException < Saclient::Cloud::Errors::HttpException

        # (static var) @@default_message = 'HTTPエラー。Variant Also Negotiates.'

      end

    end
  end
end
