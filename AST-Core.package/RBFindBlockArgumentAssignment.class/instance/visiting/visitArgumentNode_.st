visitArgumentNode: anArgumentNode
	anArgumentNode parent isBlock
		ifTrue: [ arguments add: anArgumentNode name ]