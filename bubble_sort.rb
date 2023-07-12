# use ChatGPT for help on how to keep iterating. I wrote the initial algorithm with no
# assistance (yay!), but I was unsure of how to keep iterating until there was no more
# sorting to do.
def bubble_sort(array)
  sorted = false # starts until loop since sorted = true will exit the loop

  until sorted # start of the loop
    sorted = true # condition is now set to true; loop will exit if no sorting happens

    (array.length - 1).times do |index| # iterate over array length-1 times
      if array[index] > array[index + 1] # condition when bubble sort needs to execute
        x = array[index] # setting a new variable as a placeholder
        array[index] = array[index + 1] # lower index value is rewritten
        array[index + 1] = x # higher index value is rewritten as the lower value
        sorted = false # sorted reset to false, meaning the loop executes again
      end
    end
  end
  p array

end


test = [4,9,12,55,8,10,3,78,2,0,2]
bubble_sort(test)
