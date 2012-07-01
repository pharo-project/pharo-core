class list
copyClassToOther
	"Place these changes in the other changeSet also"

	| otherSorter otherChangeSet |
	self checkThatSidesDiffer: [^ self].
	self okToChange ifFalse: [^ Beeper beep].
	currentClassName ifNil: [^ Beeper beep].
	otherSorter := parent other: self.
	otherChangeSet := otherSorter changeSet.

	otherChangeSet absorbClass: self selectedClassOrMetaClass name from: myChangeSet.
	otherSorter showChangeSet: otherChangeSet.