update40143
	"self new update40143"
	self withUpdateLog: '13736 Continue Ring Simplify
	https://pharo.fogbugz.com/f/cases/13736

13712 tiny recategorization in Collections
	https://pharo.fogbugz.com/f/cases/13712

'.
	self loadTogether: self script143 merge: false.
	self flushCaches.
self cleanRepositories.
