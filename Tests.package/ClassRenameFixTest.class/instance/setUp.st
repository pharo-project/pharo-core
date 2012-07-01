running
setUp

	previousChangeSet := ChangeSet current.
	testsChangeSet := ChangeSet new.
	ChangeSet newChanges: testsChangeSet.
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #class
		change: #Renamed
		using: #verifyRenameEvent:.
	super setUp