def stock_picker(arr)

    #sets up profit tracking variable and answer array
    profit = 0
    answer = []
    
    #for each item in the array, scan through each following integer and subtract from "buy"
    arr.each{ |buy|         
        start = arr.index(buy) + 1
        arr[start..-1].each{ |sell|  

            #if the result of buy-sell > profit = true, return new profit number and new array of [buy, sell] prices
            if sell - buy > profit      
                profit = sell - buy
                answer.clear()
                answer.push(buy, sell)
            end       
        }
    }
    #convert the answers for [buy,sell] into their appropriate index values in arr
    answer.map!{ |a| arr.index(a) + 1 }
    p "Buy Day: #{answer[0]}"
    p "Sell Day: #{answer[1]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])

