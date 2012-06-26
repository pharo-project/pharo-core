matching
replacingBlock
	^valueBlock isNil 
		ifTrue: [valueBlock := self createReplacingBlock]
		ifFalse: [valueBlock]