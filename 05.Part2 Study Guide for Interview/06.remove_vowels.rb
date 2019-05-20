# PEDAC

# Problem
# Write a method that takes an arry of strings, and returns an arry of the
# same string values, except with the vowels removed.
# input: An array of strings
# output: An array of modified strings

# Examples / Test Cases
# no_vowels(["green", "yellow", "black", "white"]) == ["grn", "yllw", "blck", "wht"]
# no_vowels(["Nathan"]) == ["Nthn"]
# no_vowels("Normandy Convention", "Bridge Water Associates") = ["Nrmndy Cnvntn", "Brdg Wtr sscts"]

# Data Structures
# array

# Algorithm
# Iterate through each word in the array and mutate it such that it no longer has any vowels:
    # 1. turn the word into a sub-array of characters
    # 2. Delete a character if it is a vowel
    # 3 Return new array

# Code

def no_vowels(array)
  array.map do |word|
    word.chars.delete_if {|char| char.match(/[aeiouAEIOU]/)}.join
  end
end


p no_vowels(["green", "yellow", "black", "white"]) == ["grn", "yllw", "blck", "wht"]
p no_vowels(["Nathan"]) == ["Nthn"]
p no_vowels(["Normandy Convention", "Bridge Water Associates"]) == ["Nrmndy Cnvntn", "Brdg Wtr sscts"]