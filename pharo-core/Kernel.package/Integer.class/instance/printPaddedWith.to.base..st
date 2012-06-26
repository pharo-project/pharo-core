printing
printPaddedWith: aCharacter to: anInteger base: aRadix 
	"Answer the string containing the ASCII representation of the receiver 
	padded on the left with aCharacter to be at least anInteger characters."
	| aStream padding digits |
	#Numeric.
	"2000/03/04  Harmon R. Added Date and Time support"
	aStream := (String new: 10) writeStream.
	self
		printOn: aStream
		base: aRadix
		showRadix: false.
	digits := aStream contents.
	padding := anInteger - digits size.
	padding > 0 ifFalse: [^ digits].
	^ ((String new: padding) atAllPut: aCharacter;
	 yourself) , digits