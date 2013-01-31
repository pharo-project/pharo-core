special context access
unwindBlock
	"unwindContext only. access temporaries from BlockClosure>>ensure:/ifCurtailed:"
	^self tempAt: 1
