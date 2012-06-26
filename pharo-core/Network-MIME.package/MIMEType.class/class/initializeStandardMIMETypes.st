class initialization
initializeStandardMIMETypes
	"MIMEType initializeStandardMIMETypes"

	StandardMIMEMappings := Dictionary new.
	self standardMIMETypes keysAndValuesDo:[:extension :mimeStrings |
		StandardMIMEMappings
			at: extension asString asLowercase
			put: (mimeStrings collect: [:mimeString | MIMEType fromMIMEString: mimeString]).
	].