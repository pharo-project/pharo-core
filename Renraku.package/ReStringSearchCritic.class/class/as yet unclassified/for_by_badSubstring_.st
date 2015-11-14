for: anEntity by: aRule badSubstring: aString
	^ self basicNew
		initializeRule: aRule target: anEntity badSubstring: aString;
		yourself 