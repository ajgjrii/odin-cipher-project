# goal is to take a string, and cipher the text based on stepping the index for a
# particular value. As an example, "hello" with an change of 2 would give "jgnnq"

# part A is to turn the alphabet into an array. $alpha_array is a global variable
alphabet = "abcdefghijklmnopqrstuvwxyz"
$alpha_array = alphabet.chars()
# alpha_array is an array of all letters in the alphabet

# THESE LINES ARE TO TEST INDEXING PROCESS. DELETE THESE LATER
#alpha_array[2] # this will return value "c", which is at index 2
#$alpha_array.index("c") #this will return 2, the index of the value "c"


# part B is to index a string according to indices from alpha_array
def string_indexer (user_string)
  # string_array creates an array for a word, indexed_array will store indices
  # with respect to the alphabet
  user_string
  string_array = user_string.chars()
  indexed_array = []

  # for loop is appending indices of each letter to indexed_array
  for letter in string_array do
    indexed_array.push($alpha_array.index(letter))
  end
  indexed_array
end

# part C is to modify the indices based on a desired value
def scrambler (user_word, step)
  # word_array calls string_indexer and passes user_word as the argument
  word_array = string_indexer(user_word)
  scrambled_index = []

  #for loop iterates through word_array and adds the desired step to each object
  for value in word_array do
    adjustment = value + step
    scrambled_index.push(adjustment)
  end
  scrambled_index
end

# part D is to create a cipher for individual words
def word_cipher (user_word, step)
  # scrambled_array calls scrambler and passes user_word and step
  scrambled_array = scrambler(user_word, step)
  adjusted_array = []
  new_word_array = []

# This loop is to wrap index values
  for value in scrambled_array do
    value = value % 26
    adjusted_array.push(value)
    adjusted_array
  end

  # each value in adjusted_array is calling an indexed value in $alpha_array
  # and appending the value (a letter) to new_word_array
  for value in adjusted_array do
    new_word_array.push($alpha_array[value])
  end
  new_word_array
  new_word_array.join()
end



test_phrase = "this is a dog"

def caesar_cipher(phrase, step)
  phrase_array = phrase.split
  ciphered_array = []

  for word in phrase_array do
    ciphered_array.push(word_cipher(word, step))
  end
  p ciphered_array.join(" ")
end

caesar_cipher(test_phrase, 1)

