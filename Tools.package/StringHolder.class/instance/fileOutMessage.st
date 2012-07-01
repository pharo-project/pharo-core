*Tools
fileOutMessage
	"Put a description of the selected message on a file"

	self selectedMessageName ifNotNil:
		[Cursor write showWhile:
			[self selectedClassOrMetaClass fileOutMethod: self selectedMessageName]]