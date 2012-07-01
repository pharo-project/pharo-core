smalltalk-80
leap
	"Answer whether the receiver's year is a leap year."

	^ start isLeapYear ifTrue: [1] ifFalse: [0].