# def word_cap(string)
#   string.split.map { |word| word.capitalize }.join(' ')
# end

# further exploration
UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

CASE_HASH = LOWERCASE.zip(UPPERCASE).to_h

def word_cap(string)
  capitalized_words = string.downcase.split.map do |word|
    if LOWERCASE.include?(word[0])
      word[0] = CASE_HASH[word[0]]
      word
    else
      word
    end
  end

  capitalized_words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
