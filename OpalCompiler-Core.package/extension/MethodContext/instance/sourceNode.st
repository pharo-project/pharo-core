sourceNode
	"Return the source node of the method or the block corresponding to the receiver"
	^ self isDead
		ifTrue: [ method sourceNode ]
		ifFalse: [ (method sourceNodeForPC: (method initialPC max: pc - 1)) methodOrBlockNode ] 