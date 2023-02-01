def stock_picker(array)
    profit = 0
    buy_sell = []
    array.each_with_index do |price, index|
        for i in index+1..array.length-1
            if array[i] - price > profit
                profit = array[i] - price
                buy_sell[0] = [index]
                buy_sell[1] = [i]
            end
            
        end
    end
    puts buy_sell
    buy_sell
end

stock_picker([17,3,6,9,15,8,6,1,10])