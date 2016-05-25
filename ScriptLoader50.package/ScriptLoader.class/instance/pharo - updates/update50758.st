update50758
	"self new update50758"
	self withUpdateLog: '18284 SmallFloat64 identityHash is answering bad value
	https://pharo.fogbugz.com/f/cases/18284
'.
	self loadTogether: self script50758 merge: false.
	SmallFloat64 tryPrimitive: 161 withArgs: #(4 true).
HashedCollection rehashAll.
	self flushCaches.
self cleanRepositories.
