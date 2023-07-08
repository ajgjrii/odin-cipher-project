# The alphabet is provided to create an index for letters
alphabet = "abcdefghijklmnopqrstuvwxyz"
$alpha_array = alphabet.chars()

def caesar_cipher(phrase, step)
  # ciphered characters are stored in new_phrase
  new_phrase = []

  for character in phrase.chars do # iterate over characters in phrase variable

    if character.match?(/[a-z]/) # looking for lowercase letters
      value = $alpha_array.index(character) # creates index with respect to alphabet
      value = (value + step) % 26 # adjusts index; modulus is needed for "wrap"
      new_phrase.push($alpha_array[value]) # ciphered value is pushed to new_phrase

    elsif character.match?(/[A-Z]/) #looking for uppercase letters
      character.downcase! #change to a downcase;
      value = $alpha_array.index(character) # creates index with respect to alphabet
      value = (value + step) % 26 # adjusts index; modulus is needed for "wrap"
      new_phrase.push($alpha_array[value].upcase) # upcase ciphered value and push

    else # NOTHING ELSE IS NEEDED FOR THIS LOOP
      new_phrase.push(character) # pushes non-letter character to new_phrase
    end
  end
  p "Your old phrase was: " + phrase
  p "Your new phrase is: " + new_phrase.join
end

your_phrase = ""
caesar_cipher(your_phrase, 1)

