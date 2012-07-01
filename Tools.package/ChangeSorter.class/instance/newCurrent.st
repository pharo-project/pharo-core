changeset menu
newCurrent
	"make my change set be the current one that changes go into"

	ChangeSet  newChanges: myChangeSet.
	self update.  "Because list of changes in a category may thus have changed"
	self changed: #relabel.