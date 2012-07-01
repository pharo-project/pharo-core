menu commands
inspectBasic
	"Bring up a non-special inspector"

	selectionIndex = 0 ifTrue: [^ object basicInspect].
	self selection basicInspect