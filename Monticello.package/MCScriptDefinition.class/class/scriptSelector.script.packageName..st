as yet unclassified
scriptSelector: selectorString script: aString packageName: packageString
	^ (self subclassForScriptSelector: selectorString)
		script: aString packageName: packageString