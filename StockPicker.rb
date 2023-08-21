# frozen_string_literal: true

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  best_profit = 0
  best_days_to_sell_and_buy = ""

  stocks.each_with_index do |buy, i|
    stocks.each_with_index do |sell, j|

      profit = sell - buy

      if profit > best_profit && i < j
        best_profit = profit
        best_days_to_sell_and_buy = [i, j]
      end
    end
  end

  p best_days_to_sell_and_buy
  best_days_to_sell_and_buy
  p "best profit #{best_profit}"

end

stock_picker(stocks)


