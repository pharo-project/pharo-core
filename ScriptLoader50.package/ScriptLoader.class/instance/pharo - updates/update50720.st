update50720
	"self new update50720"
	self withUpdateLog: '18103 Update UFFI to 0.19.1
	https://pharo.fogbugz.com/f/cases/18103'.
	self loadTogether: self script50720 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.19.1'.self flushCaches.
