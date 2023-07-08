dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

dictionary.reduce(Hash.new(0)) do |word, count|
  word[count] += 1
  word
end
