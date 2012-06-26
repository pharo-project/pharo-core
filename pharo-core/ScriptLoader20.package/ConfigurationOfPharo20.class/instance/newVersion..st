generating
newVersion: aString 
	^self 
		newVersion: aString
		description: nil
		preLoad: nil
		postLoad: nil
		fromBaseline: (self calculateBaselineForVersion: aString)