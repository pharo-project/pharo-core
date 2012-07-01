source
extractToMethodTextSelection
	| aMethod selectedInterval textArea |
	
	textArea := self model sourceTextArea.
	aMethod := self model selectedMethod.
	aMethod ifNil: [ ^ textArea flash ].
	textArea selectedContents asString ifEmpty: [ ^ textArea flash ].
	
	selectedInterval := textArea selectionInterval.
	self extractBetween: selectedInterval from: aMethod