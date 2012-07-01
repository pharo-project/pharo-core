enumerating
lengthsAndValuesDo: aBlock
	"Evaluate aBlock with the length and value of each run in the receiver"
	^self runsAndValuesDo: aBlock