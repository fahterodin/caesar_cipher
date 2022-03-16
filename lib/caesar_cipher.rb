require 'pry-byebug'

def control_ascii_low(number)
  if number > 122
    number -= 26
  elsif number < 97
    number += 26
  else
    return number
  end
  control_ascii_low(number)
end

def control_ascii_high(number)
  if number > 90
    number -= 26
  elsif number < 65
    number += 26
  else 
    return number
  end
  control_ascii_high(number)
end

def caesar_cipher(string, shift)
  string_array = string.split('')
  string_to_ascii = string_array.map(&:ord)
  string_to_ascii_shifted = string_to_ascii.map do |chr_ascii|
    if chr_ascii.between?(97, 122)
      chr_ascii += shift
      control_ascii_low(chr_ascii)
    elsif chr_ascii.between?(65, 90)
      chr_ascii += shift
      control_ascii_high(chr_ascii)
    else 
      chr_ascii
    end
  end
  string_array_shifted = string_to_ascii_shifted.map(&:chr)
  string_array_shifted.join('')
end
