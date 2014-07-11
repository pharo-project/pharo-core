on: anObject label: getTextSelector
	^self new
		instance model: anObject;
		textSelector: getTextSelector;
		yourself.