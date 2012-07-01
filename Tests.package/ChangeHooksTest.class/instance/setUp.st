Running
setUp

	previousChangeSet := ChangeSet current.
	testsChangeSet := ChangeSet new.
	ChangeSet newChanges: testsChangeSet.
	capturedEvents := OrderedCollection new.
	self generateTestClass.
	self generateTestClassX.
	super setUp