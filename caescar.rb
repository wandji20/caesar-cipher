def caescar_cipher(input, num)
  my_alphabet = 'abcdefghijklmnopqrstuvwxyz'
  words = input.split
  (0...words.size).each do |i|
    words[i].each_char do |letter|
      flag = false
      flag = true if  letter < "a"
      my_index = my_alphabet.index(letter.downcase)
      new_letter = my_alphabet[(my_index + num)]
      words[i] = words[i].sub(letter, new_letter.upcase!) if flag
      words[i] = words[i].sub(letter, new_letter)
    end
  end
  words.join(' ')
end

p caescar_cipher('wanDdji  bertArand       tadcNhu', -3)
