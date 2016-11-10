update60288
	"self new update60288"
	self withUpdateLog: '19323 ClassRemoved should provide information about affected package
	https://pharo.fogbugz.com/f/cases/19323

18233 improving Pragma API
	https://pharo.fogbugz.com/f/cases/18233

19320 Improve MethodClassifier logic
	https://pharo.fogbugz.com/f/cases/19320'.
	self loadTogether: self script60288 merge: false.
	
Smalltalk image recompile.
	self flushCaches.
