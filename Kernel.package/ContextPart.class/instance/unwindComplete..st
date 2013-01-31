special context access
unwindComplete: aBool
	"unwindContext only. access temporaries from BlockClosure>>ensure:/ifCurtailed:"
	self tempAt: 2 put: aBool
