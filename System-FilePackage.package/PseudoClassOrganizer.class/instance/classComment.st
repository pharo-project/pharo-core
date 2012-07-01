comment accessing
classComment
	"Answer the comment associated with the object that refers to the receiver."
	classComment == nil ifTrue: [^''].
	^classComment