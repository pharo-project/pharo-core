installGoAction
	self selectionAct: [ :t :entity |
		t highlightEvaluateAndDo: [ :result | t selection: result ] ]
			on: $g
			entitled: 'Do it and go'