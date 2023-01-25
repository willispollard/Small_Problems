# PROBLEM

# Write a method that takes a string, and then returns a hash that 
# contains 3 entries: one represents the number of characters in 
# the string that are lowercase letters, one the number of characters 
# that are uppercase letters, and one the number of characters that 
# are neither.

# Input: String
# Output: Hash with 3 entries

# Explicit Rules:
# - Method takes a string and returns a hash with 3 entries
#   - The entries are lowercase letters, uppercase letters, and neither

# Implicit Rules:
# - Neither includes spaces and non-alphabetic characters

# EXAMPLES

# letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# DATA / ALGORITHM

# String & Hash

# Set constant LOWERCASE = 'aeiou'
# Set constant UPPERCASE = 'AEIOU'
# Define a method called letter_case_count that takes a string
# - Set a variable called case_hash equal to a hash containing the keys
#   :lowercase, :uppercase, and :neither (each with a val of 0)
# - Convert the passed in string to an array and iterate through it
#   - For each lowercase letter in the array
#     - :lowercase gets increased by 1
#   - For each uppercase letter in the array
#     - :uppercase gets increased by 1
#   - For each character that is neither
#     - :neither gets increased by 1
# - Return case_hash

# SET LOWERCASE = 'aeiou'
# SET UPPERCASE = 'AEIOU'
# DEF letter_case_count(string)
#   SET case_hash = { lowercase: 0, uppercase: 0, neither: 0 }

#   CALL string.chars.each
#     IF LOWERCASE.include?(char)
#       case_hash[:lowercase] += 1
#     IF UPPERCASE.include?(char)
#       case_hash[:uppercase] += 1
#     ELSE
#       case_hash[:neither] += 1
#     END
#   END

#   case_hash
# END

# CODE

LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')
def letter_case_count(string)
  case_hash = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if LOWERCASE.include?(char)
      case_hash[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      case_hash[:uppercase] += 1
    else
      case_hash[:neither] += 1
    end
  end

  case_hash
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

