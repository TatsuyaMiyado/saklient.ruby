# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_bad_request_exception'

module Saklient
  module Cloud
    module Errors

      # 不適切な要求です. 配列とは比較できない演算子がフィルタ中に含まれています.
      class FilterArrayComparisonException < Saklient::Errors::HttpBadRequestException

        # (static var) @@default_message = '不適切な要求です。配列とは比較できない演算子がフィルタ中に含まれています。'

      end

    end
  end
end