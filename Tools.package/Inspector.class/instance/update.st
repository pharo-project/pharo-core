accessing
update
	"Reshow contents, assuming selected value may have changed."

	selectionIndex = 0
		ifFalse:
			[self contentsIsString
				ifTrue: [contents := self selection]
				ifFalse: [contents := self selectionPrintString].
			self changed: #contents.
			self changed: #selection.
			self changed: #selectionIndex]