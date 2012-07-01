error handling
errorBlock
	^errorBlock isNil ifTrue: [[:message :position | ]] ifFalse: [errorBlock]