updating
verifyContents
	
	| newList existingSelection anIndex newRawList |
	(model editSelection == #editComment) ifTrue: [^ self].
	model classListIndex = 0 ifTrue: [^ self].
	newRawList := model perform: getRawListSelector.
	newRawList == priorRawList ifTrue: [^ self].  "The usual case; very fast"
	priorRawList := newRawList.
	newList := (Array with: ClassOrganizer allCategory), priorRawList.
	list = newList ifTrue: [^ self].
	self flash.  "could get annoying, but hell"
	existingSelection := self selection.
	self updateList.
	(anIndex := newList indexOf: existingSelection ifAbsent: [nil])
		ifNotNil:
			[model noteSelectionIndex: anIndex for: getListSelector.
			self selectionIndex: anIndex]
		ifNil:
			[self changeModelSelection: 0]