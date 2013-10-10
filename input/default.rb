#
# Phoneme frequencies from http://spell.psychology.wustl.edu/SyllStructDistPhon/CVC.html
# I've rounded them somewhat
#

@consonant_phonemes_with_weighting = {
  'b' => 215,  'k' => 325,  'd' => 270, 'f' => 160, 'g' => 155, 'h' => 105, 'j' => 115, 
  'l' => 365,  'm' => 245,  'n' => 305, 'p' => 240, 'kw' => 5,  'r' => 290, 's' => 240, 
  't' => 325,  'th' => 55,  'dh' => 15, 'v' => 100, 'w' => 80,  'ks' => 5,  'y' => 30, 
  'z' => 70,   'sh' => 110, 'wh' => 25, 
  'ch' => 115, 'ng' => 45,  'zh' => 5
}

@vowel_phonemes_with_weighting = {
  'a' => 200, 'ay' => 185, 'ee' => 210, 'e' => 160, 'ai' => 135, 'i' => 210, 'oh' => 145, 
  'o' => 125, 'oo' => 120, 'u' => 40, 'oi' => 25, 'ou' => 110, 'aw' => 45, 'ar' => 30, 
  'er' => 115
}

#
# Taken from word frequency data at http://www.wordfrequency.info/100k_samples.asp
#
@allowed_lengths_with_weighting = {
  # 1 or 2 phonemes
  'v' => 2, 'cv' => 3, 'vc' => 0, 
  # 3 phonemes
  'ccv' => 4, 'cvv' => 1, 'cvc' => 21, 'vcv' => 2, 'vcc' => 1, 
  # 4 phonemes
  'cvcv' => 15, 'vcvc' => 3, 'cvcc' => 16, 'cvvc' => 2, 'ccvc' => 13, 'ccvc' => 1,
  'vccv' => 1, 
  # 5 phonemes
  'cvcvc' => 13, 'cvvcc' => 2, 'cvvcc' => 2, 'vccvc' => 3, 'vvccv' => 2, 'cvccv' => 9, 
  'cvvcv' => 1, 'ccvcc' => 2, 'vcvcc' => 1, 'ccvcv' => 8, 'cccvc' => 1, 'vcvvc' => 1,
  # 6 phonemes
  'cvcvcv' => 11, 'cvcccv' => 2, 'vcvcvc' => 3, 'vccvvc' => 2, 'vccvcv' => 3, 
  'cvccvc' => 20, 'ccvcvc' => 7, 'ccvccv' => 2, 'cvcvcc' => 2, 'cvcvvc' => 2, 
  'vcccvc' => 1, 
  # 7 phonemes
  'cvcvcvc' => 6, 'vcccvcv' => 3, 'cvccvcv' => 7, 'cvccvvc' => 2, 'vcvcvvc' => 1,
  'vccvccv' => 2, 'cvccvcc' => 1, 'ccvccvc' => 2, 'ccvcvvc' => 1, 'cvcvccv' => 4,
  'ccvcvcv' => 2, 'vccvcvc' => 2, 'cvvcvcc' => 1, 'cvcvvcc' => 1, 'cvcccvc' => 1, 
  'vcvccvc' => 1, 'cccvcvc' => 1, 'vcvcvcv' => 1, 
  # 8 phonemes
  'cvcvcvcv' => 4, 'cvccvccv' => 1, 'cvcvcvvc' => 1, 'cvvcvcvc' => 1, 'vccvcvvc' => 1,
  'ccvcvcvc' => 3, 'vcvcvcvc' => 1, 'cvcccvcc' => 2, 'cvccvcvc' => 6, 'cvccccvc' => 1,
  'cvcvccvc' => 1, 'vccvccvc' => 1, 'ccvcccvc' => 1, 'cccvcccv' => 1, 
  # 9 phonemes
  'cvcvcvcvc' => 2, 'vccvccvvc' => 2, 'cvcvccvcv' => 2, 'ccvcvcvcc' => 1, 
  'vccvcvvcv' => 1, 'cvcvvcccv' => 1, 'cvcvvcvcc' => 1, 'cvccvcvvc' => 2,
  'vcvcvcvcv' => 1, 'vcvcvcvvc' => 1, 'cvccvccvc' => 2, 'vccvccvcv' => 1,
  'vccvcvcvc' => 1, 'cvcccvcvc' => 1, 'ccvccvccv' => 1, 'cvccvcvcc' => 1,
  # 10 phonemes
  'vcvcvvcvcv' => 1, 'cvcvcvccvc' => 3, 'cvccvcvvcv' => 1, 'cvvcvcvcvc' => 1,
  'cvccvccvcc' => 1, 'cvcccvcvcv' => 1, 'vcvvccvcvc' => 1, 'cvcvcvvcvc' => 1,
  'cvccvcvccv' => 1, 'cvccvccvcv' => 1, 'vcvcvcvcvc' => 1, 'vccvccvccv' => 1, 
  # 11 phonemes
  'ccvcvvccvcc' => 1, 'cvccvccvccv' => 1, 'vcccvccvcvc' => 1, 'ccvcvcvvccv' => 1,
  'vccvccvcvcv' => 1, 'cvccvcvcvvc' => 1, 'cvccvccvcvc' => 1, 'cvcvcvcvvvc' => 1, 
  # 12 phonemes
  'vccvcvcvcvcv' => 1, 'cvccvccvcvvc' => 1, 'cvcvcvccvcvc' => 1, 'cvccvcvccvcv' => 1,
  'cvcvcvccvccv' => 1, 'vcccvccvcvcc' => 1, 'cvccvcvcvcvc' => 1, 
  # 13 phonemes
  'vccvcvvccvcvc' => 1,
  # 14 phonemes
  'cvcvccvcvccvvc' => 1,
}
