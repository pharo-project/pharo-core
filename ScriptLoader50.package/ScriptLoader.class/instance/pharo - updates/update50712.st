update50712
	"self new update50712"
	self withUpdateLog: '18063 update to UnifiedFFI 0.19
	https://pharo.fogbugz.com/f/cases/18063'.
	self loadTogether: self script50712 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.19'.self flushCaches.
