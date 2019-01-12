def print_three_times(name)
    idx = 0
    while idx < 3
        puts (name)
        idx = idx + 1
    end
end

print_three_times("Mike")

def first_square_numbers(number_of_squares)
    squares = []

    idx = 0
    while idx < number_of_squares
        squares.push(idx * idx)
        idx = idx + 1
    end

    return squares
end

puts("How many square numbers do you want?")
number_of_desired_squares = gets.chomp
    until number_of_desired_squares.to_i.to_s == number_of_desired_squares
        puts("you must enter an number, please try again")
        number_of_desired_squares = gets.chomp
    end

squares = first_square_numbers(number_of_desired_squares)

idx = 0
while idx < squares.length
    puts(squares[idx])
    idx = idx + 1
end