update60244
	"self new update60244"
	self withUpdateLog: '19070 Support for multiples Morphic Worlds
	https://pharo.fogbugz.com/f/cases/19070'.
	self loadTogether: self script60244 merge: false.
	
[ UIManager default terminateUIProcess; spawnNewProcess. ] fork.
	self flushCaches.
