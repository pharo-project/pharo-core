as yet unclassified
newString: aString onFileNumber: sourceIndex 
	"Answer an instance of me for string, aString, on file indexed by 
	sourceIndex. Put the string on the file and create the remote reference."

	^self new string: aString onFileNumber: sourceIndex