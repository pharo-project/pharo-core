matching
matchingBlock
	^valueBlock isNil 
		ifTrue: [valueBlock := self createMatchingBlock]
		ifFalse: [valueBlock]