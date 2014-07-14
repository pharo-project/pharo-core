selection: aNumber
	"Notify change of conflicts too."
	
	super selection: aNumber.
	self changed: #selectionIsConflicted