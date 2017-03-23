


# Prompt the user for a palindrome
print "\nPlease enter a possible palindrome: ";

# Delete the "Enter" from the end of the inputted word
chomp ( $palindrome = <STDIN> );

# Take the palindrome and put each letter into an array
@palindrome = split( //, $palindrome );

# Reverse the array of letters so it is backwards
@backwards = reverse( @palindrome );

# Find the size of the palindrome
$sizeOfPalindrome = @palindrome;

# Loop through the two arrays and see if the word is
# the same backwards as it is forward
for( $i = 0; $i < $sizeOfPalindrome; $i++ ){
	# If any of the letters do not match then
	# the loop is broken
	if( @palindrome[$i] ne @backwards[$i] ){
		$pali = "";
		last;
	}
	else{
		$pali = "true";
	}
		
} 

# If the variable $pali from above is true then all of the
# words matched and the word entered is a palindrome
if( $pali ){
	print "\n\"$palindrome\" is a palindrome\n";
}
# Otherwise the word entered was not a palindrome
else{
	print "\n\"$palindrome\" is NOT a palindrome\n";
}



