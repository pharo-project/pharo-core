installDefaultSelectionActions

	self defaultSelectionActions do: [ :anAction |
		self addSelectionAction: anAction ]

	"self
		selectionAct: [ :aPresentation |
				aPresentation evaluateSelection ]
			on: $d
			entitled: 'Do it';
		selectionAct: [ :aPresentation |
				aPresentation evaluateSelectionAndDo: [ :result | result inspect ] ]
			on: $i
			entitled: 'Inspect it';
		selectionAct: [ :aPresentation |
				aPresentation debugSelection ]
			on: $D
			entitled: 'Debug it';
		selectionAct: [ :aPresentation |
				aPresentation profileSelection ]
			entitled: 'Profile it'"