genStoreTemp: tempIndex
	"242		11110010	iiiiiiii		Pop and Store Temporary Variable #iiiiiiii"
	(tempIndex < 0 or: [tempIndex > 63]) ifTrue:
		[^self outOfRangeError: 'index' index: tempIndex range: 0 to: 63].
	stream
		nextPut: 242;
		nextPut: tempIndex