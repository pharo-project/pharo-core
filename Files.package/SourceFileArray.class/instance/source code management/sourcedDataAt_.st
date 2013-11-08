sourcedDataAt: sourcePointer

	| index position file preamble |
	index:= self fileIndexFromSourcePointer: sourcePointer.
	index = 0 ifTrue: [ ^'' ].  "no source pointer for this element"
	position := self filePositionFromSourcePointer: sourcePointer.
	file := self at: index.
	file ifNil: [ ^'' ].  "sources file not available"
	"file does not exist happens in secure mode"
	file := [file readOnlyCopy] 
			on: FileDoesNotExistException 
			do:[:ex| ^'' ].
	self flag: 'I do not know why 3 is a good number'.
	preamble :=  self getPreambleFrom: file at: (0 max: position - 3).
	file close.
	^preamble