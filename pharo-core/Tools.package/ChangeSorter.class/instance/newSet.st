changeset menu
newSet
	"Create a new changeSet and show it., making it the current one.  Reject name if already in use."

	| aSet |
	self okToChange ifFalse: [^ self].
	aSet := ChangeSet newChangeSet.
	aSet ifNotNil:
		[self update.
		self showChangeSet: aSet.
		self changed: #relabel]