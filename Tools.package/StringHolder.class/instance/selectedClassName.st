accessing
selectedClassName
	"I may know what class is currently selected"

	self selectedClass ifNotNil: [^ self selectedClass name].
	^ nil