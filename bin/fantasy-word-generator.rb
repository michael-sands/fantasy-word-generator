# state variables
@next_is_vowel = false
@last_was_vowel = false

def usage extra_info
  puts "Usage:"
  puts "ruby fantasy-word-generator.rb <how many words> <input file>"
  if extra_info then
    puts("  * " + extra_info)
  end
end

def add_next_phoneme(list)
  list[rand(list.size)]
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

if $*[1] == nil or $*[1].empty? then
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

puts "**** Fantasy words from input file '#{@input_file}' ****"
@how_many.times do

  @use_length = @allowed_lengths[rand(@allowed_lengths.size)]

  @name = ''

  @use_length.each_char do |n|
    @name += add_next_phoneme(n == 'v' ? @vowel_phonemes : @consonant_phonemes)    
  end

  @name[0] = @name[0].upcase
  
  puts @name

end

puts "****   ****"
