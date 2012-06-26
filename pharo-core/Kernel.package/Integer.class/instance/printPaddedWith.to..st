printing
printPaddedWith: aCharacter to: anInteger 
	"Answer the string containing the ASCII representation of the receiver 
	padded on the left with aCharacter to be at least anInteger characters."
	#Numeric.
	"2000/03/04  Harmon R. Added Date and Time support"
	^ self
		printPaddedWith: aCharacter
		to: anInteger
		base: 10