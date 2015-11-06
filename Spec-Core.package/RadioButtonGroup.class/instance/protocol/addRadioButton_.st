addRadioButton: aButton

	buttons do: [:b | 
		aButton whenActivatedDo: [ b privateSetState: false ].
		b whenActivatedDo: [ aButton privateSetState: false ]].
		
	aButton canDeselectByClick: self canDeselectByClick.
	buttons add: aButton.
	aButton privateSetState: false