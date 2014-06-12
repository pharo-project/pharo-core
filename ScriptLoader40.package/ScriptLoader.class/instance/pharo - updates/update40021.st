update40021
	"self new update40021"
	self withUpdateLog: '13089 reciprocalFloorLog: should be deprecated or just removed
	https://pharo.fogbugz.com/f/cases/13089

13303 komitter is still using Pharo30Inbox as destination of new slices
	https://pharo.fogbugz.com/f/cases/13303

'.
	self loadTogether: self script21 merge: false.
	self flushCaches.
