
def stock_picker(stocks)
  max_profit = 0
  days = []

  stocks.each_with_index do |price, day|
    for i in day+1...stocks.length do
      if ((max_profit == nil) || (stocks[i] - price > max_profit))
        max_profit = stocks[i] - price
        days = [day, i]

      end
    end
  end
  return days

end

stock_picker([17,3,6,9,15,8,6,1,10])
