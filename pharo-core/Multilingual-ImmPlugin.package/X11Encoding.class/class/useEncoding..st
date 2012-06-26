as yet unclassified
useEncoding: encoding

	self setEncoding: encoding.
	LanguageEnvironment startUp.
	^ self encoding.