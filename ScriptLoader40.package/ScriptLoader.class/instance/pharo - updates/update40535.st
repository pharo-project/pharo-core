update40535
	"self new update40535"
	self withUpdateLog: '15042 Add TCPSocketEchoTest test/example
	https://pharo.fogbugz.com/f/cases/15042'.
	self loadTogether: self script535 merge: false.
	self flushCaches.
