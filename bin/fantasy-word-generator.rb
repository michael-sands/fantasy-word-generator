@next_is_vowel = false
@last_was_vowel = false

def add_next_phoneme(list)
  list[rand(list.size)]
end

def decide_what_is_next index
  if @use_length == 2 and index == 1 and !@last_was_vowel then
    @next_is_vowel = true
  elsif @last_was_vowel and @next_is_vowel then
    @next_is_vowel = false
  elsif !@last_was_vowel and !@next_is_vowel then
    if (index == (@use_length - 1)) then
      @use_length += 1
    end
    @next_is_vowel = true
  elsif rand(9) > 4.5 then
    @last_was_vowel = @next_is_vowel
    @next_is_vowel = true
  else 
    @last_was_vowel = @next_is_vowel
    @next_is_vowel = false
  end
end

def flatten_weighted_hash input_hash
  result = []
  input_hash.each { | phoneme, weight | 
    weight.times do 
      result << phoneme
    end
  }
  return result
end

@consonant_phonemes_with_weighting = {
  'b' => 1, 'k' => 1, 'd' => 1, 'f' => 1, 'g' => 1, 'h' => 1, 'j' => 1, 'l' => 1, 'm' => 1,
  'n' => 1, 'p' => 1, 'kw' => 1, 'r' => 1, 's' => 1, 't' => 1, 'th' => 1,
  'dh' => 1, 'v' => 1, 'w' => 1, 'ks' => 1, 'y' => 1, 'z' => 1, 'sh' => 1, 'wh' => 1, 
  'ch' => 1, 'ng' => 1, 'zh' => 1
}

@vowel_phonemes_with_weighting = {
  'a' => 1, 'ay' => 1, 'ee' => 1, 'e' => 1, 'ai' => 1, 'i' => 1, 'oh' => 1, 'o' => 1, 
  'oo' => 1, 'u' => 1, 'oi' => 1, 'ou' => 1, 'aw' => 1, 'ar' => 1, 'er' => 1
}

@allowed_lengths_with_weighting = { 
  2 => 5, 3 => 4, 4 => 6, 5 => 4, 6 => 3, 7 => 2, 8 => 1, 9 => 1 
}

#
# TO DO:
# ✓ add weighting to each phoneme list, and at runtime create a phoneme list that has
# one entry per phoneme weighting
# - add file-input where input file consists of phoneme lists and allowed lengths
# - add all the non-english phonemes I can find
#

# convert weighted lists to simple list with entries equal to weight  

@consonant_phonemes = flatten_weighted_hash @consonant_phonemes_with_weighting
@vowel_phonemes = flatten_weighted_hash @vowel_phonemes_with_weighting
@allowed_lengths = flatten_weighted_hash @allowed_lengths_with_weighting

# check for command line args
if $*.empty? then
  puts "How many words?"
  @how_many = gets.to_i
else
  @how_many = $*[0].to_i
end


puts "**** Fantasy words ****"
@how_many.times do

  @use_length = @allowed_lengths[rand(@allowed_lengths.size)]

  @name = ''

  @use_length.times do |n|
    decide_what_is_next n
    
    @name += add_next_phoneme(@next_is_vowel ? @vowel_phonemes : @consonant_phonemes)    
  end

  @name[0] = @name[0].upcase
  
  puts @name

end

puts "****   ****"
