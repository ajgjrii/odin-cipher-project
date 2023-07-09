def stock_picker(prices)
  # all values are 0 or empty; they are overwritten when a new max profit is found
  max = 0
  days = []
  price = []

  # the first iteration allows us to pass through each element of the array
  # the second iteration is necessary so that we iterate through each element once
  # with respect to a given element. As an example, index 0 will iterate through all
  # elements, then once that is done, index 1 will iterate through all elements, and
  # so on.
  prices.each_with_index do |element1, index1|
    prices.each_with_index do |element2, index2|
      next if index1 >= index2 #skips duplicates and keeps sequence
      difference = element2 - element1
        if max < difference # if the current max < difference, execute this if block
          max = difference
          days = [index1, index2]
          price = [element1, element2]
        end
    end
  end
  # the information is printed for the user to read
  p "The maximum profit is $" + max.to_s
  p "The days are indexed on the array as " + days.to_s
  p "The prices for the days are $" + price[0].to_s + " and $" + price[1].to_s
end

stock_prices = [17,3,6,9,15,8,6,1,10]
stock_picker(stock_prices)

