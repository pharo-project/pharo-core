testing
includes: aNode 
	^ self = aNode complexContents | (self contents
			detect: [:each | each includes: aNode]
			ifNone: []) notNil 