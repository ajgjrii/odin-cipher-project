dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dictionary)
  frequencies = Hash.new(0) # create a new hash

  word.downcase! # Convert the word to lowercase for case insensitivity

  dictionary.each do |substring| # iterates through each word in the dictionary
    substring.downcase! # Convert dictionary word to substring to lowercase

    # next line looks for all occurrences of the dictionary word (variable substring)
    # that happen in the variable ~word~ by using the scan method. The scan method is
    # creating an array of all the matches it has found (which is the same substring).
    # The length method is used to count the items in the generated array
    count = word.scan(substring).length
    # the substring is added to the hash and a count is provided for any count > 0
    frequencies[substring] += count if count > 0
  end

  p frequencies # prints the generated hash
end

substrings("Howdy partner, sit down below! How's it going?", dictionary)
