accessing
methodNode
	^parent isNil ifTrue: [nil] ifFalse: [parent methodNode]