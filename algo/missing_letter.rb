# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  range_array = range.split("")
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet_array = alphabet.split("")

  index = alphabet_array.index(range_array[0])

  alphabet_array = alphabet_array.slice(index..26)

  for i in 0..range_array.length
    if alphabet_array[i] != range_array[i]
      return alphabet_array[i]
    end
  end
  return nil

end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
