update30640
	"self new update30640"
	self withUpdateLog: '12417 Introduce lineEnding on OSPlatform
	https://pharo.fogbugz.com/f/cases/12417
	
12371 Deprecated #methodDictionary and #methodDictionary:
	https://pharo.fogbugz.com/f/cases/12371
'.
	self loadTogether: self script295 merge: false.
	self flushCaches.
