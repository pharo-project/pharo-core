methodOrBlockNode
	^parent isNil ifTrue: [nil] ifFalse: [parent methodOrBlockNode]