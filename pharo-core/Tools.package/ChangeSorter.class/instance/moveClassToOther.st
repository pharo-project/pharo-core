class list
moveClassToOther
	"Place class changes in the other changeSet and remove them from this one"

	self checkThatSidesDiffer: [^ self].
	(self okToChange and: [currentClassName notNil]) ifFalse: [^ Beeper beep].

	self copyClassToOther.
	self forgetClass