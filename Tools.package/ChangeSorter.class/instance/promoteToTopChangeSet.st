changeset menu
promoteToTopChangeSet
	"Move the selected change-set to the top of the list"

	ChangeSet promoteToTop: myChangeSet.
	(parent ifNil: [self]) modelWakeUp