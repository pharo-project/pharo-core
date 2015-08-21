displayCritic: aCritic
	| listItem |
	listItem := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 5;
		color: Color transparent;
		layoutInset: (Margin left: 0 top: 0 right: 10 bottom: 0);
		yourself.
	
	listItem
		addMorph: aCritic title asStringMorph;
		addMorphBack: (self infoButtonFor: aCritic).
	
	aCritic isAutofixable
		ifTrue: [ listItem addMorphBack: (self autofixButtonFor: aCritic) ].
		
	listItem addMorphBack: (self skipButtonFor: aCritic).
	
	listItem addMorphBack: (Morph new
		color: Color transparent;
		hResizing: #spaceFill;
		height: 5;
		yourself).
	
	listItem addMorphBack: (QAFeedbackMorph new critic: aCritic).
	
	^ listItem