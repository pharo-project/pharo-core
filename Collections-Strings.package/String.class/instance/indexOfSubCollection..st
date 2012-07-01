accessing
indexOfSubCollection: sub 
	#Collectn.
	"Added 2000/04/08 For ANSI <sequenceReadableCollection> protocol."
	^ self
		indexOfSubCollection: sub
		startingAt: 1
		ifAbsent: [0]