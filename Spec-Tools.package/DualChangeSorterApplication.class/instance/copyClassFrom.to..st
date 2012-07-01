menu - class
copyClassFrom: src to: dest
	"Place these changes in the other changeSet also"

	| otherChangeSet |
	self checkThatSidesDiffer: [ ^ self ].
	self okToChange ifFalse: [ ^ Beeper beep ].
	src selectedClass ifNil: [ ^ Beeper beep ].
	otherChangeSet := dest selectedChangeSet.
	
	self model copyClass: src selectedClass from: src selectedChangeSet to: otherChangeSet.
	
	dest setSelectedChangeSet: otherChangeSet.