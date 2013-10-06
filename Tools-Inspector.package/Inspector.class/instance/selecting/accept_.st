accept: aString 
	| result |
	result := self doItReceiver class compiler
		source: aString readStream;
		context: self doItContext;
		receiver: self doItReceiver;
		failBlock: [self changed: #flash.
			^ false];
		evaluate.
	
	self replaceSelectionValue: result.
	self changed: #contents.
	^ true