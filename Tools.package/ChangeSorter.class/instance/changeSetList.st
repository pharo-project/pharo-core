changeset menu
changeSetList
	"Answer a list of ChangeSet names to be shown in the change sorter."

	|names| 
	names := (ChangeSet allChangeSets collect: [:each | each name]) reversed.
	names = 0 ifTrue: 
		[ ChangeSet assuredChangeSetNamed: 'New Changes'.
		names := #('New Changes')].
	^ names
	