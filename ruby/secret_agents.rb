# NOTE: This assignment is currently in progress and not all of the Releases
# been accounted for in this file. My partner (Diane Henry) and I worked on this
# to the limit of our availability, spanning nearly 10 hours of worktime, and
# involved us going back to square one at one point in order to avoid getting
# further stuck as well as ensuring we were appropriately competent in what we were
# learning.

# In order to provide clarity on our thought processes throughout our meetings,
# this file's content is sectioned into two parts. The first (lines 24 - 87)
# being a chronicle of our latest work, the major points of our methodology, as
# well as our latest code that we concluded at the end of our latest meeting (as
# indicated by code that isn't part of the comments). The second (lines 93 - 129)
# is our earlier work that eventually led us to start over in order to get unstuck
# in our progress of Release 2 Step 2. This second section will be marked as comments
# so as to not be confused with our latest work. That said, what we got for "The
# Encrypt Method" (lines 95 - 111) did work to satisfy the conditons for the first
# step of Release 2. It was "The Decrypt Method" (lines 114 - 129) that wasn't
# working out.





# Section 1: Our Latest Work

# Release 2 Part 1 (Encryption)
# Giving the variable alphabet a value.

# alphabet = "abcdefg"

# Define a method called advance_one_letter with the variable called alphabet.

# def advance_one_letter(alphabet)
# 	advance_one_letter(#{alphabet})

# Give that method an expression that makes the alphabet variable advance to the
# next letter.

#  	p "abcdefg".next
#  	p "b".next

# 	p alphabet[0..6]
# end

# p advance_one_letter(alphabet)
  
# p "abcdefg".next

# We're working to solve for getting .next to advance each individual letter
# rather than acting only on just the last letter.

# We called the function with the above expression with .next, but it didn't
# solve the problem.

# We decided to go back to square one again and indicate that alphabet was the
# user's password (original_password).

original_password = "abc"

def encryption(original_password)
  original_password[0] = original_password[0].next
  original_password[1] = original_password[1].next
  original_password[2] = original_password[2].next
  original_password[0] + original_password[1] + original_password[2]
end

encryption(original_password)


# Release 2 Part 2 (Decryption) (INCOMPLETE)

# Giving the variable a value.

original_password = "bcd"
word_bank = "abcdefghijklmnopqrstuvwxyz"

# Define a method called decryption with the variable called original_password.

def decryption(original_password)
#  "#{original_password}"[a..g]
  original_password[0] = word_bank[0]
  original_password[1] = word_bank[1]
  original_password[2] = word_bank[2]
  original_password[0] + original_password[1] + original_password[2]
end

decryption(original_password)





# Section 2: Our Earlier/Abandoned Work

# The Encrypt Method:
# Create the value for encrypt to equal a string of letters but with each letter's
# index advanced by one.

# Start by giving a value to the index and encrypt.

# Then set it up a loop that spans the encrypt's length. Once you do that, make it
# so that the printed letter corresponds to the next index number.
def encrypt(password)
index = 0
while index < password.length
 	password[index] = password[index].next
	index += 1
 end
 password
end
p encrypt("abc")


# The Decrypt Method:
# Create the value for decrypt to equal a string of letters but with each letter
# being the previous letter in the alphabet.

# We already have the values for str above, so start with a loop that spands the
# encrypt's length.

 str = 0
 decrypt = "abcdefghijklmnopqrstuvwxyz"

 while str < decrypt.length
	decrypt[str] = decrypt[-str]
	str += 1
 end

 puts decrypt
