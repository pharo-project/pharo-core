blockNodes
	^self methods flatCollect: [ :each | each blockNodes ]