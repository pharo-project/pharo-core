accessing
changes: changeRecords file: aFile
	file := aFile.
	changeList := OrderedCollection new.
	list := OrderedCollection new.
	listIndex := 0.
	changeRecords do: [:each |
		(each respondsTo: #methodClass)
			ifFalse: [self addItem: ChangeRecord new text: each asString]
			ifTrue:
				[self addItem: each text: ('method: ' , each methodClass name , (each isMetaClassChange ifTrue: [' class '] ifFalse: [' '])
					, each methodSelector
					, '; ' , each stamp)]].
	listSelections := Array new: list size withAll: false