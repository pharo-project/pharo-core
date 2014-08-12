logServerGeneric: subject
	^ (self newLogEvent: ZnServerGenericLogEvent)
		subject: subject;
		emit