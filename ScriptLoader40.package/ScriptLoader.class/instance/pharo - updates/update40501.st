update40501
	"self new update40501"
	self withUpdateLog: '14942 Delay refactoring (part 2b) - clean out newCodeEnabled wrappers
	https://pharo.fogbugz.com/f/cases/14942'.
	self loadTogether: self script501 merge: false.
	self flushCaches.
