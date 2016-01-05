update50511
	"self new update50511"
	self withUpdateLog: '17280 Athens restoreAfter: doesnt work
	https://pharo.fogbugz.com/f/cases/17280

17308 Only show clickable testIcon for non abstract test classes that has tests
	https://pharo.fogbugz.com/f/cases/17308

17263 Monkey fails with Exception: PrimitiveFailed: primitive #isEnabled in NativeBoost class failed 
	https://pharo.fogbugz.com/f/cases/17263

17306 MorphicLabelAdapter does not honor initial color
	https://pharo.fogbugz.com/f/cases/17306

'.
	self loadTogether: self script50511 merge: false.
	self flushCaches.
self cleanRepositories.
