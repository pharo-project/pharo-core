smalltalk-80
fromSeconds: secondCount 
	"Answer an instance of me that is secondCount number of seconds since midnight."

	| integerSeconds nanos |
	integerSeconds := secondCount truncated.
	integerSeconds = secondCount
		ifTrue: [nanos := 0]
		ifFalse: [nanos := (secondCount - integerSeconds * NanosInSecond) asInteger].
	^ self seconds: integerSeconds nanoSeconds: nanos
