squeak protocol
minusSeconds: anInteger
	"Answer a TimeStamp which is anInteger number of seconds before the receiver."

	^ self - (anInteger seconds)