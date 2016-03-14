update50637
	"self new update50637"
	self withUpdateLog: '17800 load UnifiedFFI 0.15
	https://pharo.fogbugz.com/f/cases/17800'.
	self loadTogether: self script50637 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.15'.self flushCaches.
