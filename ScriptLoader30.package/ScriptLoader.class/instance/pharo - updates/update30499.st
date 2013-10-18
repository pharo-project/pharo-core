update30499
	"self new update30499"
	self withUpdateLog: '11928 failing testPackageInfoTest>>testGatherExtensionsFromSamePacka
	https://pharo.fogbugz.com/f/cases/11928

11939 Move some extending messages to the Morphic-Core package
	https://pharo.fogbugz.com/f/cases/11939
'.
	self loadTogether: self script154 merge: false.
	self flushCaches.
