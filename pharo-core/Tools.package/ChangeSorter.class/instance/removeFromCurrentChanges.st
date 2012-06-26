message list
removeFromCurrentChanges
	"Redisplay after removal in case we are viewing the current changeSet"

	super removeFromCurrentChanges.
	currentSelector := nil.
	self showChangeSet: myChangeSet