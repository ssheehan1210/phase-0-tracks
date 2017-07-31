# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.



# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

"iNvEsTiGaTiOn".replace "InVeStIgAtIoN"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.

"iNvEsTiGaTiOn".swapcase
# Signature: swapcase -> new_str
# Description: Returns a copy of str with uppercase alphabetic characters converted to lowercase and lowercase characters converted to uppercase.

"iNvEsTiGaTiOn".swapcase!
# Signature: swapcase! -> str or nil
# Description: Same as String#swapcase, but modifies the receiver in place, returning str, or nil if no changes were made.



# "zom".<???>
# => “zoom”

"zom".insert(1, 'o')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

"zom".insert(2, 'o')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

"zom".insert(-2, 'o')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

"zom".insert(-3, 'o')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

"zom".replace "zoom"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.



# "enhance".<???>
# => "    enhance    "

"enhance".center(15)
# Signature: center(width, padstr='') -> new_str
# Description: Centers str in width, providing padding if the width is greater than the length of str.

"enhance".replace "    enhance    "
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.



# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

"Stop! You’re under arrest!".replace "STOP! YOU’RE UNDER ARREST!"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.

"Stop! You’re under arrest!".tr("Stop! You’re under arrest!", "STOP! YOU’RE UNDER ARREST!")
# Signature: tr(from_str, to_str) -> new_str
# Description: Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str.

"Stop! You’re under arrest!".tr!("Stop! You’re under arrest!", "STOP! YOU’RE UNDER ARREST!")
# Signature: tr!(from_str, to_str) -> str or nil
# Description: Same as String#tr, but translates str in place, returning str, or nil if no changes were made.

"Stop! You’re under arrest!".upcase
# Signature: upcase -> new_str
# Description: Returns a copy of str with all lowercase letters replaced with uppercase counterparts.

"Stop! You’re under arrest!".upcase!
# Signature: upcase! -> str or nil
# Description: Same as String#upcase, but returns nil if no changes were made.



# "the usual".<???>
#=> "the usual suspects"

"the usual".insert(9, ' suspects')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

"the usual".insert(-1, ' suspects')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

"the usual".ljust(18, ' suspects')
# Signature: ljust(integer, padstr='') -> new_str
# Description: If integer is greater than the length of str, returns a new string of length integer with str left justified and padded with padstr; otherwise, returns str.

"the usual".replace "the usual suspects"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.



# " suspects".<???>
# => "the usual suspects"

" suspects".insert(0, 'the usual')
# Signature: insert(index, other_str) -> str
# Description: Inserts other_str before the character at the given index, modifying str.

" suspects".prepend("the usual")
# Signature: prepend(other_str) -> str
# Description: Prepend - Prepend the other_str to the str.

" suspects".replace "the usual suspects"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.

" suspects".rjust(18, 'the usual')
# Signature: rjust(integer, padstr='') -> new_str
# Description: If integer is greater than the length of str, returns a new string of length integer with str right justified and padded with padstr; otherwise, returns str.



# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

"The case of the disappearing last letter".chomp("r")
# Signature: chomp(separator=$/) -> new_str
# Description: Returns a new string with the given record separator removed from the end of str.

"The case of the disappearing last letter".chomp!("r")
# Signature: chomp!(separator=$/) -> str or nil
# Description: Same as String#chomp, but returns nil if no changes were made.

"The case of the disappearing last letter".chop
# Signature: chop -> new_str
# Description: Returns a new string with the last character removed.

"The case of the disappearing last letter".chop!
# Signature: chop! -> str or nil
# Description: Same as String#chop, but returns nil if no changes were made.

"The case of the disappearing last letter".replace "The case of the disappearing last lette"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.

"The case of the disappearing last letter".slice(0..38)
# Signature: slice(range) -> new_str or nil
# Description: Returns a substring of the corresponding characters that were sliced out. Its beginning and end are interpreted as offsets delimiting the substring to be returned.

"The case of the disappearing last letter".slice("The case of the disappearing last lette")
# Signature: slice(match_str) -> new_str or nil
# Description: Returns the match_str if it occurs in the original string. Otherwise, it returns as nil.

"The case of the disappearing last letter".slice!(0..38)
# Signature: slice!(range) -> new_str or nil
# Description: Deletes the specified portion from the str, returning the portion that was deleted.

"The case of the disappearing last letter".slice!("The case of the disappearing last lette")
# Signature: slice!(other_str) -> new_str or nil
# Description: Deletes the specified portion from the str, returning the portion that was deleted.



# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

"The mystery of the missing first letter".replace "he mystery of the missing first letter"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.

"The mystery of the missing first letter".slice(1..38)
# Signature: slice(range) -> new_str or nil
# Description: Returns a substring of the corresponding characters that were sliced out. Its beginning and end are interpreted as offsets delimiting the substring to be returned.

"The mystery of the missing first letter".slice("he mystery of the missing first letter")
# Signature: slice(match_str) -> new_str or nil
# Description: Returns the match_str if it occurs in the original string. Otherwise, it returns as nil.

"The mystery of the missing first letter".slice!(1..38)
# Signature: slice!(range) -> new_str or nil
# Description: Deletes the specified portion from the str, returning the portion that was deleted.

"The mystery of the missing first letter".slice!("he mystery of the missing first letter")
# Signature: slice!(other_str) -> new_str or nil
# Description: Deletes the specified portion from the str, returning the portion that was deleted.



# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".replace "Elementary, my dear Watson!"
# Signature: replace(other_str) -> str
# Description: Replaces the contents of str with the corresponding values in other_str.

"Elementary,    my   dear        Watson!".squeeze
# Signature: squeeze([other_str]*) -> new_str
# Description: Builds a set of characters from the other_str parameters, returning a new string where runs of the same character that occur in this set are replaced by a single character.

"Elementary,    my   dear        Watson!".squeeze!
# Signature: squeeze!([other_str]*) -> str or nil
# Description: Same as String#squeeze, but returns nil if no changes were made.



# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

"z".getbyte(0)
# Signature: getbyte(index) -> 0..255
# Description: Returns the character's byte number (focusing on the character's corresponding index number) as an integer.

"z".ord
# Signature: ord -> integer
# Description: Return the integer ordinal of a one-character string.



# "How many times does the letter 'a' appear in this string?".<???>
# => 4

"How many times does the letter 'a' appear in this string?".count "a"
# Signature: count([other_str]+) -> fixnum
# Description: Each other_str parameter defines a set of characters to count in str.