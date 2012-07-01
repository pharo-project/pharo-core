testing
isDirectlyUsed
	"This node is directly used as an argument, receiver, or part of an assignment."

	^parent isNil ifTrue: [false] ifFalse: [parent directlyUses: self]