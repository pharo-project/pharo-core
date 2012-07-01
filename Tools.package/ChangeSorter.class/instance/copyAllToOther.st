changeset menu
copyAllToOther
	"Copy this entire change set into the one on the other side"
	| companionSorter |
	self checkThatSidesDiffer: [^ self].
	(companionSorter := parent other: self) changeSet assimilateAllChangesFoundIn: myChangeSet.
	companionSorter changed: #classList.	"Later the changeSet itself will notice..."
	companionSorter changed: #messageList