update40514
	"self new update40514"
	self withUpdateLog: '14999 Twin: add base for Reflectivity 
	https://pharo.fogbugz.com/f/cases/14999

14033 Failing test: AJx64AssemblerTests>#testStringOps64Mnemonics
	https://pharo.fogbugz.com/f/cases/14033

14998 Add WeakSlot
	https://pharo.fogbugz.com/f/cases/14998

'.
	self loadTogether: self script514 merge: false.
	self flushCaches.
self cleanRepositories.
