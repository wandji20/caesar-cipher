def caescar_cipher(input,num)
  my_alphabet = 'abcdefghijklmnopqrstuvwxyz'

  input.each_char do |letter|
    my_index = my_alphabet.index(letter.downcase)
    new_letter = my_alphabet[(my_index + num)]
     input = input.sub(letter, new_letter )
    #puts "letter is #{letter} , new_letter is #{new_letter} "
  end
  p input
end

caescar_cipher('wanDdji',2)