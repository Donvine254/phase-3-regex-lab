def starts_with_a_vowel?(word)
     word.match?(/\A[aeiou]/i)
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\bun\w*ing\b/)
  end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end
  

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match?(/\b\A[A-Z]\D\b/)
end

def valid_phone_number?(phone)
    clean_number = phone.gsub(/\D/, '')
  
    return false unless clean_number.match?(/^\d{10}$/)
    # Additional checks for specific conditions
    return false if clean_number[0] == '0' || clean_number[0] == '1'
    true
  end
  