testing
isAFileNamed: fName
	^FileStream isAFileNamed: (self fullNameFor: fName)