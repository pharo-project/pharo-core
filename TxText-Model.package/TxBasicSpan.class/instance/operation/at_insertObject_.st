at: txPosition insertObject: anObject
	"
	Insert an embedded object at given position into the receiver
	"

	| newSpan |
	
	newSpan := TxEmbeddedObjectSpan text: self text.
	newSpan object: anObject.
	
	txPosition isAtSpanStart 
		ifTrue: [  self insertPrev: newSpan. ^ txPosition ].
	txPosition isAtSpanEnd 
		ifTrue: [  self insertNext: newSpan. ^ self next endPosition ].
	
	"split & insert"
	self splitAt: txPosition spanPosition.
	self insertNext: newSpan.
	^ self next endPosition 	

