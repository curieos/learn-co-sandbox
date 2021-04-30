def scramble (phrase)
  split_phrase = phrase.split()
  new_phrase = []
  for word in split_phrase
    new_phrase.push(scramble_word(word))
  end
  new_phrase.join(" ")
end

def scramble_word (word)
  if word.length < 4
    return word
  end
  substring = word[1..-2]
  scrambled_substring = substring.split("").shuffle.join("")
  until scrambled_substring != substring
    scrambled_substring = substring.split("").shuffle.join("")
  end
  "#{word[0]}#{scrambled_substring}#{word[-1]}"
end

puts scramble("This phrase isn't hard to read")