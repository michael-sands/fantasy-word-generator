@consonant_phonemes_with_weighting = {
  'b' => 1, 'k' => 5, 'd' => 1, 'f' => 1, 'g' => 1, 'h' => 1, 'j' => 1, 'l' => 1, 'm' => 1,
  'n' => 1, 'p' => 1, 'kw' => 5, 'r' => 1, 's' => 1, 't' => 1, 'th' => 1,
  'dh' => 1, 'v' => 1, 'w' => 1, 'ks' => 5, 'y' => 1, 'z' => 5, 'sh' => 1, 'wh' => 1, 
  'ch' => 1, 'ng' => 1, 'zh' => 5
}

@vowel_phonemes_with_weighting = {
  'a' => 2, 'ay' => 1, 'ee' => 2, 'e' => 2, 'ai' => 2, 'i' => 2, 'oh' => 1, 'o' => 1, 
  'oo' => 2, 'u' => 1, 'oi' => 1, 'ou' => 2, 'aw' => 1, 'ar' => 1, 'er' => 1
}

@allowed_lengths_with_weighting = { 
  'v' => 1, 
  'cv' => 5, 'vc' => 5, 'cvc' => 7, 
  'ccv' => 6, 'cvv' => 3, 
  'cvcv' => 6, 
  'cvcvc' => 4, 
  'cvcvcv' => 3, 
  'cvcvcvc' => 2, 
  'cvcvcvcv' => 1, 
  'cvcvcvcvc' => 1 
}