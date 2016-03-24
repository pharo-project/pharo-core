update50660
	"self new update50660"
	self withUpdateLog: '17869 add support for indirect calls
	https://pharo.fogbugz.com/f/cases/17869'.
	self loadTogether: self script50660 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.18'.self flushCaches.
