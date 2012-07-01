protocol
hasUnacceptedEdits: aBoolean
	"Return if the text zone has unaccepted edits (orange corner)"

	^ self widget 
		ifNil: [ false ]
		ifNotNil: [:w | w hasUnacceptedEdits: aBoolean ]