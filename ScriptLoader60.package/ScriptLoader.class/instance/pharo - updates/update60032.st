update60032
	"self new update60032"
	self withUpdateLog: '18045 Use iconNamed: instead of relying on DNU [Athens]
	https://pharo.fogbugz.com/f/cases/18045

18284 SmallFloat64 identityHash is answering bad value
	https://pharo.fogbugz.com/f/cases/18284

18242 list packages for a protocol environment does not work
	https://pharo.fogbugz.com/f/cases/18242'.
	self loadTogether: self script60032 merge: false.
	
SmallFloat64 tryPrimitive: 161 withArgs: #(4 true).
HashedCollection rehashAll.
	self flushCaches.
