accessing
makeFreeFor: heapManager
	"mark receiver as free and merge with adjusted blocks, if they also free"

	free := true.
	
	(right notNil and: [right isFree]) ifTrue: [
		length := length + right length.
		heapManager removeFreeBlock: right.
		right := right right.
		].
	
	(left notNil and: [ left isFree ]) 
		ifTrue: [ left length: (left length + length). left right: right.
			heapManager checkForFreePage: left
			 ]
		ifFalse: [ heapManager addFreeBlock: self ].