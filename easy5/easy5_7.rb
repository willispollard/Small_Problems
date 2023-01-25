ALPHABET = ('a'..'z').to_a

def word_sizes(str)
  results = {} 

  word_arr = str.split.each do |word|
    word.chars { |char| ALPHABET.include?(char) }
  end

  word_arr.each do |word|
    results[word.length] = word_arr.select {|wrd| wrd.length == word.length}.count
  end

  results
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

