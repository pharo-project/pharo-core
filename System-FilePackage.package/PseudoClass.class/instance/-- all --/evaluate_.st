evaluate: aString
	
	^self compiler
		source: aString;
		logged: true;
		evaluate
	
