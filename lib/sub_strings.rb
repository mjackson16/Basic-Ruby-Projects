def substrings(string, dictionary)
  word_count = Hash.new(0)
  string.split(' ').each do |substring|
    dictionary.each do |word|
      word_count[word] += 1 if substring.downcase.include?(word.downcase)
    end
  end
  p word_count
end
