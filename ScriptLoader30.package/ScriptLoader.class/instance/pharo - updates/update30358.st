update30358
	"self new update30358"
	self withUpdateLog: '- issue 2489 Strange behavior of Rectangle (first part)
	https://pharo.fogbugz.com/default.asp?2489
	
- issue 11441 Use SmalllintManifestChecker in assertValidLintRule:
	https://pharo.fogbugz.com/default.asp?11441'.
	self loadTogether: self script150 merge: false.
	self flushCaches.
