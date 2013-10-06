pastEndPut: anObject
	"If the stream reaches its limit, just output the contents and reset."
	
	self endEntry.
	^ self nextPut: anObject