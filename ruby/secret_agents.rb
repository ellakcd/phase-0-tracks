=begin
start with all the letters of the alphabet and the word, and go through each letters of the word
and if that letter is not a space, take the index of the alphabet in that letter, and add one to it, then get the mod 26 of it to go back. And find the letter of the new index and append this letter to the output string

for decryption we can do the same thing, except minus one instead of plus one
=end

def encrypt(str)
  result=""
  alphabet=('a'..'z').to_a
  num = str.length
  num.times do |n|
    char=str[n]
    if char == " "
      result+=" "
    else
      i=alphabet.index(char)
      new_i=(i+1)%26
      result+=alphabet[new_i]
    end
  end
  result
end


def decrypt(str)
  result=""
  alphabet=('a'..'z').to_a
  num = str.length
  num.times do |n|
    char=str[n]
    if char == " "
      result+=" "
    else
      i=alphabet.index(char)
      new_i=(i-1)%26
      result+=alphabet[new_i]
    end
  end
  result
end