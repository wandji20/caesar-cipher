def caescar_cipher(input, num)
  my_alphabet = 'abcdefghijklmnopqrstuvwxyz'
  words = input.split
  result = []
  words.each do |word|
    word = word.split('')
    (0...word.length).each do |i|
      val = word[i] =~ /[a-zA-Z]/
      next if val.nil?

      flag = false
      flag = true if word[i] < 'a'
      my_index = my_alphabet.index(word[i].downcase)
      word[i] = my_alphabet[(my_index + num) % 26]
      word[i] = flag ? word[i].upcase! : word[i]
    end
    word = word.join('')
    result << word
  end
  result.join(' ')
end
p caescar_cipher('The quick!', 2)

p caescar_cipher('The quick brown fox jumped over the lazy dogs', 11) == 'Esp bftnv mczhy qzi ufxapo zgpc esp wlkj ozrd'
