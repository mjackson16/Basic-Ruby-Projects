def caesar_cipher(string, shift)
  new_array = string.split("")
  shift_array = []

  new_array.each do |letter|
    new_chr = (letter.ord + shift).chr

    if letter.ord.between?(64, 91)
      letter = if new_chr.ord > 90
          (new_chr.ord - 26).chr
        else
          new_chr
        end
    end

    if letter.ord.between?(96, 123)
      letter = if new_chr.ord > 122
          (new_chr.ord - 26).chr
        else
          new_chr
        end
    end

    shift_array.push(letter)

  end

  shifted_string = shift_array.join("")

  p shifted_string
end

caesar_cipher("What a string!", 5)
