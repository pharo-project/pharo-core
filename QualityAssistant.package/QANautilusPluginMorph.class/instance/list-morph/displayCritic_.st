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
	
	listItem addMorph: aCritic title asStringMorph.
	
	aCritic actions do: [ :action | listItem addMorphBack: (
		IconicButton new
			target: action;
			labelGraphic: action icon;
			actionSelector: #actOnCritic:ofEntity:;
			arguments: { aCritic . entity };
			color: Color transparent;
			helpText: action description;
			extent: 16 @ 16;
			borderWidth: 0;
			yourself) ].

	aCritic isCritic ifTrue: [
		listItem addMorphBack: (Morph new
			color: Color transparent;
			hResizing: #spaceFill;
			height: 5;
			yourself).
	
		listItem addMorphBack: (QAFeedbackMorph new critic: aCritic) ].
	
	^ listItem