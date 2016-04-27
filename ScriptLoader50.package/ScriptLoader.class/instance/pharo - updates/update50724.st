update50724
	"self new update50724"
	self withUpdateLog: '18061 Komitter is referring to old versions
	https://pharo.fogbugz.com/f/cases/18061

17963 FFICalloutAPI class ignores context instance variable
	https://pharo.fogbugz.com/f/cases/17963'.
	self loadTogether: self script50724 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.19.2'.
FFICallout initializeTypeAliases.
	self flushCaches.
