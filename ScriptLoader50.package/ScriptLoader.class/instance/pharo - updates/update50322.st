update50322
	"self new update50322"
	self withUpdateLog: '16557 FileSystem-Core should not depend on Regex-Core
	https://pharo.fogbugz.com/f/cases/16557

16550 Bad BlueInk block formatting
	https://pharo.fogbugz.com/f/cases/16550

16558 Collections-Abstract should not depend on Regex-Core
	https://pharo.fogbugz.com/f/cases/16558'.
	self loadTogether: self script50322 merge: false.
	self flushCaches.
