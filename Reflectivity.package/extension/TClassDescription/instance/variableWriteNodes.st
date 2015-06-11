variableWriteNodes
	^self methods flatCollect: [ :each | each variableWriteNodes ]