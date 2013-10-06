treeMorphIn: aMorph 
	| treeMorph |
	treeMorph := (self treeMorphClass on: self)
				getMenuSelector: #menu:shifted:;
				keystrokeActionSelector: #keyStroke:from:;
				columns: {
					MorphTreeColumn new startWidth: 300; rowMorphGetSelector: #labelMorphFor:; yourself.
					MorphTreeColumn new rowMorphGetSelector: #inputMorphFor:;yourself
				};
				doubleClickSelector: #doubleClick;
				rowInset: 6;
				columnInset: 6;
				rowColorForEven: Color veryLightGray muchLighter;
				preferedPaneColor: Color veryLightGray lighter lighter;
				yourself.
	^ treeMorph buildContents