classComment
	"Answer the comment associated with the object that refers to the receiver."

	comment ifNil: [ ^ '' ].
	
	^ comment