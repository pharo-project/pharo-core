protocol
addRadioButton: aButton

	buttons do: [:b | 
		aButton whenActivatedDo: [ b privateSetState: false ].
		b whenActivatedDo: [ aButton privateSetState: false ]].
		
	buttons add: aButton.
	aButton privateSetState: false