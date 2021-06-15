# Valid Walk
# You have a walking robot. Given a string of compass directions ("nesw").
# It will travel one mile in each of those directions. Write a method to 
# determine whether a set of directions will lead your robot back to 
# its starting position

def valid_walk?(string)
  arr = {'n' => 0, 'e' => 0, 's' => 0, 'w' => 0}
  arr_char = string.split("")

  arr_char.each do |ele|
    arr[ele] += 1    
  end

  if arr['n'] == arr['s'] && arr['e'] == arr['w']
    return true
  else
    return false
  end
end

print valid_walk?("nnnn")
puts
print valid_walk?("nenessww")
puts


# Missing Number #
# Given an array of unique integers ordered from least to greatest,
# write a function that determines which integers are still needed to
# fill in the consecutive set.

def missing_numbers(arr)
  min = arr[0]
  max = arr[-1]
  ans = []

  (min...max).each do |num|
    if !arr.include?(num) 
      ans << num
    end
  end

  return ans
end

print missing_numbers([1,3])
puts
print missing_numbers([2,3,7])
puts
print missing_numbers([-5,-1,0,3])
puts

# sequence_search
# You are given two strings, a sequence and a key. Write a function that 
# determine if the characters of the key appear in order (although not
# necessarily contiguously) in the sequence

def sequence_search(str1, str2)
  str2 = str2.chars
  character = str2.shift
  i = 0
  while i < str1.length
    if str1[i] == character
      if str2.length > 0
        character = str2.shift
      else
        return true
      end
    end
    i += 1
  end

  return false

end

print sequence_search("arcate", "cat")
puts
print sequence_search("cla2t3", "cat")
puts
print sequence_search("cta", "cat")
puts
print sequence_search("caat", "cat")
puts