file operations
checkName: aFileName fixErrors: fixing
	"Check if the file name contains any invalid characters"
	| fName |
	fName := super checkName: aFileName fixErrors: fixing.
	(fName includes: self class pathNameDelimiter) ifFalse:
		[^fName].
	^fixing
		ifTrue: [fName copyReplaceAll: (String with: self class pathNameDelimiter) with: '#']
		ifFalse: [self error:'Invalid file name']