changeset menu
removePostscript
	(myChangeSet hasPostscript and: [myChangeSet postscriptHasDependents]) ifTrue:
		[^ self inform:
'Cannot remove the postscript right
now because there is at least one
window open on that postscript.
Close that window and try again.'].

	myChangeSet removePostscript.
	self showChangeSet: myChangeSet