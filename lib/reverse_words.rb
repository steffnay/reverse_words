def reverse_words(my_words)

  if my_words == nil
    return nil
  end

  length = my_words.length


  if length < 2
    return my_words
  end

  front_index = 0
  back_index = 1

  while front_index <= back_index
    if my_words[back_index] == " "|| back_index == length

      starting = front_index
      ending = back_index - 1
      while starting < ending
        temp = my_words[starting]
        my_words[starting] = my_words[ending]
        my_words[ending] = temp
        starting += 1
        ending -= 1

      end
      front_index = back_index + 1
    end

   if my_words[back_index] == nil
     return my_words
   end

    back_index += 1
  end


  return my_words

end
