deprecated: anExplanationString
	"this is not itself deprecated, but a compatibility method for old-style deprecation"
	
	(Deprecation
		method: thisContext sender method
		explanation: anExplanationString
		on: 'unknown'
		in: 'unknown') signal