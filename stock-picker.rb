def stock_picker(prices)
    highest_profit = 0
    best_days = [0, 0]
    min_price = prices[0]
    min_index = 0
    prices.each_with_index do |price, index|
      if price < min_price
        min_price = price
        min_index = index
        
      elsif price - min_price > highest_profit
        highest_profit = price - min_price
        best_days[0] = min_index
        best_days[1] = index
      end
    end
    best_days
  end
  
  p stock_picker([17,3,6,9,15,8,6,1,10])