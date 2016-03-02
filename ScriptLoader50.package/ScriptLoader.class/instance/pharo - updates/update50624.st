update50624
	"self new update50624"
	self withUpdateLog: '17733 add support for enums and valueholders
	https://pharo.fogbugz.com/f/cases/17733'.
	self loadTogether: self script50624 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.14.1'.self flushCaches.
