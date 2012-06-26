changeset menu
fileIntoNewChangeSet
	"Obtain a file designation from the user, and file its contents into a  
	new change set whose name is a function of the filename. Show the  
	new set and leave the current changeSet unaltered."
	| aNewChangeSet stream file |
	self okToChange
		ifFalse: [^ self].
	ChangeSet promptForDefaultChangeSetDirectoryIfNecessary.
	file := UIManager default chooseFileMatching: nil.
	file
		ifNil: [^ self].
	stream := FileStream fileNamed: file.
	aNewChangeSet := ChangeSet
				newChangesFromStream: stream
				named: (stream name asFileReference basename).
	aNewChangeSet
		ifNotNil: [self showChangeSet: aNewChangeSet]