isDeprecated
	^ (self sendsSelector: #deprecated:) or: [self sendsSelector: #deprecated:on:in:]