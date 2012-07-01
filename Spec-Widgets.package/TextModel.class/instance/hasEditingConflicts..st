protocol
hasEditingConflicts: aBoolean
	"Set if the text zone has editing conflicts"

	^ self widget 
		ifNil: [ false ]
		ifNotNil: [:w | w hasEditingConflicts: aBoolean ]