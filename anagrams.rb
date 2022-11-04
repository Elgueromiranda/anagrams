# ANAGRAMS CHALLENGE

# Release 0 : Pseudocode Implementation of `is_anagram?`
=begin
determines wheter 2 words are anagrams
when a word is spelled using the letters of another
all the letters must be used
program will run with lower case letters
no spaces
=end

# Release 1 : Ruby Implementation of `is_anagram?`

def is_anagram?(string1, string2) 
	
	word1 = ""
	word2 = ""
	word1 = string1.split("").sort.join.downcase
	word2 = string2.split("").sort.join.downcase



	if string1 == string2
		


		return true
	


	elsif word1 == word2


		return true

	elsif word1.split('').sort.join == word2.split('').sort.join

		return true


	end
end

# Release 2 : Pseudocode Implementation of `anagrams_for`

=begin 
The anagrams should be able to be found in the dictionary then compated to the words in the dictionary after being sorted

to make the program case insensitive i need to make all the strings lowercase 

return the input word if it matches the dictionary but if it doesnt only include anagrams as a result

if the there are no anagrams return an empty array

=end


# Release 3 : Ruby Implementation of `anagrams_for`

def anagrams_for(word, dictionary)
	input = ''
	sorted_dictionary = ''
	result_array = []

	input = word.downcase.split('').sort.join
	dictionary.each { |x| sorted_dictionary =  x.chars.sort.join

if sorted_dictionary.downcase == input


		result_array << x
end


	}

return result_array

end



# DRIVER TESTS GO BELOW THIS LINE (DO NOT EDIT THIS CODE!)
puts "Running tests for `is_anagram?`..."
puts is_anagram?('cinema', 'iceman') == true # The order of the arguments should not matter.
puts is_anagram?('iceman', 'cinema') == true 
puts is_anagram?('pants', 'pants')   == true # A word is an anagram of itself.
puts is_anagram?('CiNemA', 'iceman') == true # Anagrams are case-insensitive
puts is_anagram?('abcde2', 'c2abed')  == true # The String arguments don’t need to be valid English words.
puts is_anagram?('kilso', 'osilk')   == true
puts is_anagram?('Angel', 'gle an') == false # Anagrams should not be detected with extra spaces.
puts 
puts "Running tests for `anagrams_for`..."
dictionary = ['acres', 'cares', 'Cesar', 'races', 'smelt', 'melts', 'etlsm', 'shazam']
puts anagrams_for('smelt', dictionary) == ['smelt', 'melts', 'etlsm'] # detects anagrams in dictionary
puts anagrams_for('sMelt', dictionary) == ['smelt', 'melts', 'etlsm'] # Detecting anagrams should be case insensitive
puts anagrams_for('smelt', dictionary).count('smelt') == 1 # includes the input word in result if it's in the dictionary
puts anagrams_for('smetl', dictionary) == ['smelt', 'melts', 'etlsm'] # finds anagrams even if input word not in dictionary
puts anagrams_for('sm', dictionary) == []  # If there are no anagrams, an empty array should be returned
puts
puts "Finished running tests."
