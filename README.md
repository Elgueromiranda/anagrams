# Anagrams Challenge

##Summary

From [dictionary.com](http://dictionary.reference.com/browse/anagram): An **anagram** is a word, phrase, or sentence formed from another by rearranging its letters: “Angel” is an anagram of “glean.”. Of course this means you could also say "glean" is an anagram of "angel".

To complete this challenge, you will write a method `is_anagram?` that determines whether or not two words are anagrams. Then, you will create a second method called `anagrams_for` that takes an input word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word. 

##Releases

###Release 0 : Pseudocode Implementation of `is_anagram?`

First discuss with your partner different ways you would try to find anagrams given two different words if you had to do it by hand. Once you both agree and understand a process for finding anagrams, write it out as a set of step-by-step instructions in the **anagrams.rb** file. Your pseudocode should be both easy for a human to understand and to translate into code.

**Note:** If you have spent more than 20 minutes trying to figure out how to do this, check in with a fellow student or an instructor.


###Release 1 : Ruby Implementation of `is_anagram?`

Write a method in **anagrams.rb** called `is_anagram?` that accepts two String arguments and returns `true` if the strings are anagrams and `false` if they are not.  

**Guidelines:**

* The order of the arguments should not matter.

  ```ruby
  is_anagram?('cinema', 'iceman') # => true
  is_anagram?('iceman', 'cinema') # => true
  ```

* A word is an anagram of itself.

  ```ruby
  is_anagram?('pants', 'pants')   # => true
  ```

* Anagrams are case-insensitive
  
  ```ruby
  is_anagram?('CiNemA', 'iceman') # => true
  ```

* The String argumenets don't need to be valid English words.

  ```ruby
  is_anagram('abcde2', 'c2abed')  # => true
  is_anagram?('kilso', 'osilk')   # => true
  ```

###Release 2 : Pseudocode Implementation of `anagrams_for`

First discuss with your partner different ways you would try to find a list of anagrams given a word and a dictionary if you had to do it by hand. Once you both agree and understand a process for finding anagrams, write it out as a set of step-by-step instructions in the **anagrams.rb** file. Your pseudocode should be both easy for a human to understand and to translate into code.

**Note:** Again, if you have spent more than 20 minutes trying to figure out how to do this, check in with a fellow student or an instructor.

###Release 3 : Ruby Implementation of `anagrams_for`

Write a method in **anagrams.rb** called `anagrams_for` that takes as its input a word and an array of words, representing a dictionary, and returns an array consisting of all the anagrams of the input word.  Like `is_anagram?`, the method should be *case insensitive*.  Remember, a word is always an anagram of itself.

`anagrams_for` should return an empty arrray (`[]`) if no anagrams are found in the dictionary.  You don't have to worry about the order of the returned `Array`.

#### Guidelines

 * The dictionary is just an arbitrary collection of strings. It need not contain English words, e.g., 'etlsm' is a valid word.
 * If the input word itself happens to be in the dictionary, it should be in the the returned array, too.
 * If the input word is not in the dictionary, anagrams should still be returned
 * If there are no anagrams, an empty array should be returned
 * Detecting anagrams should be case insensitive. e.g. "Cesar" is an anagram of "cares"

#### Stretch Challenge

Review your code, is there an code that repeats? If so, this is a great oppertunity to refactor. Repeatative code can be given to a seperate method and then called multiple times making your code easier to read.
