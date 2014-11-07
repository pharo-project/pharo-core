installGoAction
	self selectionAct: [ :t :entity |
		t evaluateSelectionAndDo: [ :result | t selection: result ] ]
			on: $g
			entitled: 'Do it and go'