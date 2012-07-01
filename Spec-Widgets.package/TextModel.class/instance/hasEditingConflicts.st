protocol
hasEditingConflicts
	"Return if the text zone has editing conflicts"

	^ self widget 
		ifNil: [ false ]
		ifNotNil: [:w | w hasEditingConflicts ]