changeset menu
subtractOtherSide
	"Subtract the changes found on the other side from the requesting side."
	self checkThatSidesDiffer: [^ self].
	myChangeSet forgetAllChangesFoundIn: ((parent other: self) changeSet).
	self showChangeSet: myChangeSet