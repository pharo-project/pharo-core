squeak protocol
plusSeconds: anInteger
	"Answer a TimeStamp which is anInteger number of seconds after the receiver."

	^ self + (anInteger seconds)