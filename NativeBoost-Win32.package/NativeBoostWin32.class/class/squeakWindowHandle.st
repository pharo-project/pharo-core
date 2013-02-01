as yet unclassified
squeakWindowHandle
	"This is slow, but efficient"
	
	^(self loadFunction: 'stWindow' from: '') nbUInt32AtOffset: 0
	
	