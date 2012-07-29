running
setUp

	previousChangeSet := ChangeSet current.
	testsChangeSet := ChangeSet new.
	ChangeSet newChanges: testsChangeSet.
	SystemAnnouncer uniqueInstance weak
		on: ClassRenamed
		send: #verifyRenameEvent:
		to: self.
	super setUp