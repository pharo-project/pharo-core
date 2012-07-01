menu
removeMethodFromChanges
	"Remove my method from the current change set"

	ChangeSet current removeSelectorChanges: selectorOfMethod class: classOfMethod.
	self changed: #annotation
