update50195
	"self new update50195"
	self withUpdateLog: '16044 remove empty package remove ShoutTests
	https://pharo.fogbugz.com/f/cases/16044

16048 Unify capitalization of Browser in our tools
	https://pharo.fogbugz.com/f/cases/16048'.
	self loadTogether: self script50195 merge: false.
	
ScriptLoader new unloadPackageNamed: 'ShoutTests'.
	self flushCaches.
