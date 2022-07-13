def decode_alpha(alpha)
  morse_codes = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  morse_codes.key(alpha)
end

def decode_word(text)
  array = text.split
  wordarray = []
  array.each { |letter| wordarray.push(decode_alpha(letter)) }
  wordarray.join
end

def decode_sentence(sentence)
  myarray = sentence.split('   ')
  sentarray = []
  myarray.each { |word| sentarray.push(decode_word(word)) }
  sentarray.join(' ')
end

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
