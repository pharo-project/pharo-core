changeset menu
rename
	"Store a new name string into the selected ChangeSet.  reject duplicate name; allow user to back out"

	| newName |
	newName := UIManager default request: 'New name for this change set'
						initialAnswer: myChangeSet name.
	(newName = myChangeSet name or: [newName isEmptyOrNil]) ifTrue:
			[^ Beeper beep].

	(ChangeSet named: newName) ifNotNil:
			[^ UIManager default inform: 'Sorry that name is already used'].

	myChangeSet name: newName.
	self update.
	self changed: #mainButtonName.
	self changed: #relabel.