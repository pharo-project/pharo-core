editRowMorphForColumn: glamourColumn element: element
	| brick |
	
	(brick := GLMEditableLabelBrick new)
		cancelOnEscape;
		cancelOnFocusLost;
		text: (self glamourPresentation 
			column: glamourColumn
			valueFor: element);
		hSpaceFill;
		with: [ :b | b editBrick rubricBackgroundColor: b themer rubricBackgroundColor ];
		when: #onEditMode do: [ self forceStopStepping ];
		when: #onReadMode do: [ self resetStopStepping ];
		when: #onSingleClicked do: [ :event :b | b isReadMode ifTrue: [ self explicitSelection: element ] ];
		when: #onAccepted do: [ self modified: element from: glamourColumn with: brick text ];
		yourself.
			
	^ brick asMorph
		hSpaceFill;
		vShrinkWrap