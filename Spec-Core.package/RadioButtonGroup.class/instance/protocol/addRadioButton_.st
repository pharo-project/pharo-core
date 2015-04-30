addRadioButton: aButton

	aButton whenActivatedDo: [ 
		selectedButton ifNotNil: [ :b | b privateSetState: false ].
		selectedButton := aButton ].	
	buttons add: aButton.
	aButton privateSetState: false