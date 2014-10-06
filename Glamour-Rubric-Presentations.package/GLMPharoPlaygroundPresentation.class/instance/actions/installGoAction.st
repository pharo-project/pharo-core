installGoAction
	self selectionAct: [ :page |
		text evaluateSelectionAndDo: [ :result | text selection: result ] ]
			on: $g
			entitled: 'Do it and go'