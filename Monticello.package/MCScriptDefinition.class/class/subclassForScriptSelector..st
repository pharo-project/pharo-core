as yet unclassified
subclassForScriptSelector: selectorString
	^self allSubclasses detect: [:ea | ea scriptSelector = selectorString]