=begin
PROBLEM

Input: Array containing strings, and a hash 
Output: String

Explicit rules:
- Method takes two args, an array and a hash
- The array is made up of strings that, when combined with spaces,
  produce a person's name. 
- The hash includes two keys, :title and :master, and the appropriate
  values.
  - The return value should be a string greeting that uses the persons
    full name and mentions their title and occupation as given by
    the hash

implicit rules:

EXAMPLES

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

DATA / ALGORITHM

Define a method called greeting that takes two args (array & hash)
- return a string with the name interpolated as well as the title
  and occupation
  - To combine the name call the join method with a " " passed in
    as an arg
  - To insert the title and occupation call the hash at the key
    of both

CODE
=end

def greetings(name_array, job_hash)
  "Hello, #{name_array.join(' ')}! Nice to have a #{job_hash[:title]}"\
  " #{job_hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
