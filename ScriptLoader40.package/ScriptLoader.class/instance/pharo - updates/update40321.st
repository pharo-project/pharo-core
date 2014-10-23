update40321
	"self new update40321"
	self withUpdateLog: '14068 Should add spyFor: to systemProfiler
	https://pharo.fogbugz.com/f/cases/14068

14296 Replace Announcer>>#on:send:to:s senders in NautilusCommon
	https://pharo.fogbugz.com/f/cases/14296'.
	self loadTogether: self script321 merge: false.
	self flushCaches.
