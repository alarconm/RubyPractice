# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

# define list of vowels - let's use an array
# loop through each character of the string - add to counter for each
# vowel that is found

def count_vowels(string)
  vowel_count = 0
  vowels = ["a", "e", "i","o","u"]
  i = 0

  while i < string.length
    if vowels.include?(string[i]) == true
      vowel_count += 1
    end
    i += 1
  end
  
  return vowel_count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")