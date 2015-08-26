thoroughHasSelectorReferringTo: literal
	"Answer true if any of my methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "

	| specialFlag specialByte |
	"for speed we check the special selectors here once per class"
	specialFlag := Smalltalk hasSpecialSelector: literal ifTrueSetByte: [ :b | specialByte := b ].			
	^self methods anySatisfy: [ :method | 
		((method hasLiteralThorough: literal) or: [specialFlag and: [method scanFor: specialByte]])]
		