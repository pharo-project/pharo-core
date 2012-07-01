changeset menu
addPreamble
	myChangeSet assurePreambleExists.
	self okToChange ifTrue:
		[currentClassName := nil.
		currentSelector := nil.
		self showChangeSet: myChangeSet]