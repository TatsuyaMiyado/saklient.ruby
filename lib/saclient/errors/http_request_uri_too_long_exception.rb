# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Errors

    # HTTPエラー. Request Uri Too Long.
    class HttpRequestUriTooLongException < Saclient::Errors::HttpException

      # (static var) @@default_message = 'HTTPエラー。Request Uri Too Long.'

    end

  end
end