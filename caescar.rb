def caescar_cipher(input, num)
  my_alphabet = 'abcdefghijklmnopqrstuvwxyz'
  words = input.split
  (0...words.size).each do |i|
    words[i].each_char do |letter|
      my_index = my_alphabet.index(letter.downcase)
      new_letter = my_alphabet[(my_index + num)]
      words[i] = words[i].sub(letter, new_letter)
    end
    p words
  end
  p words.join(' ')
end

caescar_cipher('wanDdji  bertrand       tadchu', 2)
