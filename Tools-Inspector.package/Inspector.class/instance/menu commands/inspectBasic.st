inspectBasic
	"Bring up a non-special inspector"

	selectionIndex = 0 ifTrue: [^ BasicInspector inspect: object].
	BasicInspector inspect: self selection.