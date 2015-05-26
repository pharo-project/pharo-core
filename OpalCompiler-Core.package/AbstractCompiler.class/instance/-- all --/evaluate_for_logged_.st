evaluate: textOrString for: anObject logged: logFlag 

	^self
		source: textOrString;
		logged: logFlag;
		receiver: anObject;
		evaluate