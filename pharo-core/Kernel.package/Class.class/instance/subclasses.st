accessing class hierarchy
subclasses
	"Answer a Set containing the receiver's subclasses."

	^subclasses == nil
		ifTrue: [#()]
		ifFalse: [subclasses copy]