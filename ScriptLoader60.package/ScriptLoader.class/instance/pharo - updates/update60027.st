update60027
	"self new update60027"
	self withUpdateLog: '18253 formatter misplaces some block comments
	https://pharo.fogbugz.com/f/cases/18253

18267 Add Class comments to Refactoring-Core-Model classes
	https://pharo.fogbugz.com/f/cases/18267

18284 SmallFloat64 identityHash is answering bad value
	https://pharo.fogbugz.com/f/cases/18284'.
	self loadTogether: self script60027 merge: false.
	
SmallFloat64 tryPrimitive: 161 withArgs: #(4).
HashedCollection rehashAll.
	self flushCaches.
