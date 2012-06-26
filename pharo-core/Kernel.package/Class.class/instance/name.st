accessing
name
	"Answer the name of the receiver."

	name == nil
		ifTrue: [^super name]
		ifFalse: [^name]