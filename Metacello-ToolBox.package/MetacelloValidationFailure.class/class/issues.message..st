instance creation
issues: issues message: aMessage
	^self new 
		issues: issues;
		signal: aMessage