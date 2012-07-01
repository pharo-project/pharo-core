Running
tearDown

	super tearDown.
	self removeGeneratedTestClasses.
	ChangeSet newChanges: previousChangeSet.
	ChangeSet removeChangeSet: testsChangeSet.
	previousChangeSet := nil.
	testsChangeSet := nil.
