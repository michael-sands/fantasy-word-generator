# state variables
@next_is_vowel = false
@last_was_vowel = false

def usage extra_info
  puts "Usage:"
  puts "> ruby fantasy-word-generator.rb <how many words>"
  # replace above with below when file input is supported...
  #puts "ruby fantasy-word-generator.rb <how many words> <input file>"
  if extra_info then
    puts("  * " + extra_info)
  end
end

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

#
# TO DO:
# ✓ add weighting to each phoneme list, and at runtime create a phoneme list that has
# one entry per phoneme weighting
# ✓ add file-input where input file consists of phoneme lists and allowed lengths
# - add all the non-english phonemes I can find
#

# check for command line args
@how_many = $*[0].to_i
$*[0] = nil

if $*[1].empty? then
  @input_file = '../input/default.rb'
  puts "Using default input file: '#{@input_file}'"
else 
  @input_file = "../input/#{$*[1]}"
end

require @input_file

# convert weighted lists to simple list with entries equal to weight  

@consonant_phonemes = flatten_weighted_hash @consonant_phonemes_with_weighting
@vowel_phonemes = flatten_weighted_hash @vowel_phonemes_with_weighting
@allowed_lengths = flatten_weighted_hash @allowed_lengths_with_weighting


if @how_many < 1 then
  puts "How many words would you like?"
  @how_many = $stdin.gets.to_i
end

if @how_many < 1 then
  usage "You must ask for at least one word! I'll assume that's what you meant."
  @how_many = 1
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
