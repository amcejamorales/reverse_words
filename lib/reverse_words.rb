# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  return nil if my_words.nil?

  count = 0
  word = ""

  while count <= my_words.length
    if my_words[count] == " " || my_words[count] == nil

      bottom = 0
      top = word.length - 1
      while bottom < top
        character = word[top]
        word[top] = word[bottom]
        word[bottom] = character

        bottom += 1
        top -= 1
      end

      word_start = count - word.length

      my_words[word_start...count] = word

      word = ""
    elsif
      word += my_words[count]
    end # if statement to determine if word is complete

    count += 1
  end # outer while loop for full string

  return my_words

end # reverse_words method
