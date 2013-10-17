exportAsBMP
	| fName |
	fName := UIManager default request:'Please enter the name' translated initialAnswer: self externalName,'.bmp'.
	fName isEmptyOrNil ifTrue:[^self].
	self imageForm writeBMPfileNamed: fName.