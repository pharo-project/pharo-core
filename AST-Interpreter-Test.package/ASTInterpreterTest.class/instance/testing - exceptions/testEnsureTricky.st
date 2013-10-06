testEnsureTricky

	self assert: (self interpret: '(String streamContents: [:s | 
		[
		[s nextPutAll: 1 printString. 1/0] ensure: [s nextPutAll: 2 printString]
		] on: Error do: [s nextPutAll: 3 printString]
		]) asInteger') equals: 132.
	
	"not fixed yet"
	self assert: (self interpret: '[[Error signal] ensure: [1].3]on: Error do: [2]') equals: 2.
