def stock_picker(stock_prices)
    lowestPrice = stock_prices[0]
    buyingDay = 0
    profit = 0

    tradingDays = [0,0]

    stock_prices.each_with_index do |currentPrice, currentDay|
        if currentPrice < lowestPrice
            lowestPrice = currentPrice
            buyingDay = currentDay
            next
        end

        #profit check
        if (currentPrice - lowestPrice) > profit
            profit = currentPrice - lowestPrice
            tradingDays = [buyingDay, currentDay]
        end
    end
    tradingDays
end

#MAIN-----------------
stock_prices_list = [17, 3, 6, 9, 15, 8, 5, 1, 10]

p stock_picker(stock_prices_list)