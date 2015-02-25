update40509
	"self new update40509"
	self withUpdateLog: '14868 Unbound Globals (XBytecodeGenerator)
	https://pharo.fogbugz.com/f/cases/14868

14989 Improve and simplify BlockClosure benchmarking
	https://pharo.fogbugz.com/f/cases/14989'.
	self loadTogether: self script509 merge: false.
	self flushCaches.
