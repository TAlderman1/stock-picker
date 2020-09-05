# stock-picker

This is a simple stock picker method that takes in an array and returns optimal [buy, sell] days.

Utilizing the Array.each method for "arr" we subtract each following value from the selected value to locate greatest profit margin.

Once we have that information we push optimal buy and sell values to the "answer" array.

Then we use the Array.map method to return the indexes of the optimal buy/sell price values in the "arr" object.

Finally, we return the "day" in the list when it is optimal to buy, followed by the day it is optimal to sell, formatted to be more readable.

Trent Alderman
