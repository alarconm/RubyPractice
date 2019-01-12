# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

# Loop through the array, add a nested loop for each item in array
# sum the two numbers together and check if it equals zero
# return the index of each if it equals zero

def two_sum(nums)
  i = 0
  
  while i < nums.length - 1
    k = i + 1

    while k < nums.length
      if nums[i] + nums[k] == 0
        return [i,k]
      end
      k += 1
    end

    i += 1
  end

  return nil
end

<<<<<<< HEAD
puts("How many square numbers do you want?")
number_of_desired_squares = gets.chomp
    until number_of_desired_squares.to_i.to_s == number_of_desired_squares
        puts("you must enter an number, please try again")
        number_of_desired_squares = gets.chomp
    end

squares = first_square_numbers(number_of_desired_squares)
=======
puts(two_sum([1, 3, 5, -3]))

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
>>>>>>> af05c75c7193057fd677404f974e4bd62c937d47

puts("\nTests for #two_sum")
puts("===============================================")
    puts(
      'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
    )
    puts(
      'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
    )
puts("===============================================")