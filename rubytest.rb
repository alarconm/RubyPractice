# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

# loop through the string
# compare end character to starting character at each iteration
# break loop if they are ever not equal and return false, else return true

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false 
    end
    i += 1
  end
  return true
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #palindrome?")
puts("===============================================")
    puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
    puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
    puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts("===============================================")