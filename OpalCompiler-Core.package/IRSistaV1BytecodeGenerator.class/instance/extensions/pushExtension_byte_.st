pushExtension: index byte: byte
	"Note that if index is 0, nothing is generated.
	
	Be careful, for index > 255, it may generate the extension in the incorrect order. To test."

	| currentIndex |
	currentIndex := index.
	[currentIndex <= 0] whileFalse: [ 
		self nextPut: byte.
		self nextPut: currentIndex \\ 256.
		currentIndex := currentIndex // 256 ]