exportAsGIF
	| fName |
	fName := UIManager default request:'Please enter the name' translated initialAnswer: self externalName,'.gif'.
	fName isEmptyOrNil ifTrue:[^self].
	GIFReadWriter putForm: self imageForm onFileNamed: fName.