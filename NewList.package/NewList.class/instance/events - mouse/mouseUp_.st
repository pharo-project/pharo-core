mouseUp: event
	
	| newEvent |
	newEvent := event translatedBy: self topLeft negated .
	
	self renderer mouseUp: newEvent.