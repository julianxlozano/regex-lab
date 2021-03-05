require 'pry'

def starts_with_a_vowel?(word)
   letter= word =~ /[AEIOUaeiou]/
   letter == 0 ? true : false 
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un[a-z]*ing/) 
    
end

def words_five_letters_long(text)
    #binding.pry 
    text.scan(/\b\w{5}\b/)

end

def first_word_capitalized_and_ends_with_punctuation?(text)
  # binding.pry 

   if /^[A-Z].*\W$/.match?(text) == true
    true
  elsif /[a-z][a-z][!.?]/.match?(text) == true 
    false
  else 
    false
  end

end

def valid_phone_number?(phone)
   # binding.pry 
    if /^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/.match?(phone) == true
        true 
    else
        false
    end


    #phone.scan(/(\d{3})(\d{3})(\d{4})/)
 
end
