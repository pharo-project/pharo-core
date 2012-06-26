accessing
selectedClass
	"Answer the class of the receiver's current selection"

	self selectionUnmodifiable ifTrue: [^ object class].
	^ self selection class