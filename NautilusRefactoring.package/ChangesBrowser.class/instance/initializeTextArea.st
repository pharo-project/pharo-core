initialization
initializeTextArea
	textArea 
		enabled: false;
		"make sure we can cycle over the text field"
		on: Character tab shift do: [ self giveFocusToNextFrom: textArea ];
		on: Character tab do: [ self giveFocusToPreviousFrom: textArea ].