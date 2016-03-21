update50655
	"self new update50655"
	self withUpdateLog: '17835 add support for opaque types
	https://pharo.fogbugz.com/f/cases/17835

15263 Path>>do:  skips empty segments, yet #size counts them, resulting in inconsistent behavior for paths with empty segments
	https://pharo.fogbugz.com/f/cases/15263

17849 themeChanged for NautilusAnnotationDisplayer
	https://pharo.fogbugz.com/f/cases/17849'.
	self loadTogether: self script50655 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.16'.self flushCaches.
