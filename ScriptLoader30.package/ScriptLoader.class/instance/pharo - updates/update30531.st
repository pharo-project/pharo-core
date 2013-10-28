update30531
	"self new update30531"
	self withUpdateLog: '6368 deprecate unescapePercents and encodeForHTTP
	https://pharo.fogbugz.com/f/cases/6368'.
	self loadTogether: self script186 merge: false.
	self flushCaches.
