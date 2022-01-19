def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
count = 0
sentence = ""
while count < src.size do
inner_count = 0
while inner_count < src[count].size do 
  if src[count][inner_count].class == String
    sentence += src[count][inner_count] + " "
  end
inner_count += 1
end
count += 1
end
puts sentence
sentence
end

#join takes a lot longer to code
#size = length = count

mixed_data_1 = [
  ["The", 4, "quick"],
  [-1, "brown", "fox", 30],
  ["studied", 101, 233, "Ruby"]
]

mixed_data_2 = [
  ["Turning", "and", "turning", "in", "the", "widening", "gyre"],
  ["The", "falcon", "cannot", "hear", "the", "falconer;"],
  ["Things", "fall", "apart;", "the", "centre", "cannot", "hold"]
]

join_nested_strings(mixed_data_1)
join_nested_strings(mixed_data_2)
