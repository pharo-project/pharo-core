tree build
treeMorph
	
	| treeMorph |
	
	treeMorph := (TickSelectionListMorph on: self)
		columns: {MorphTreeColumn new startWidth: 5;
						rowMorphGetSelector: #selectedMorph;
						headerButtonLabel: '' font:  nil.
					MorphTreeColumn new
						rowMorphGetSelector: #nameMorph;
						headerButtonLabel: self itemsHeaderName font:  nil};
						
		withHLines: true;
		resizerWidth: 0;
		columnInset: 3;
		keystrokeActionSelector: #keyStroke:;
		makeLastColumnUnbounded;
		preferedPaneColor: Color white;
		rowColorForEven:  Color veryLightGray muchLighter odd: Color white .
	^ treeMorph 