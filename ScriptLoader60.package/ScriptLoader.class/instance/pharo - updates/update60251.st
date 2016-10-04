update60251
	"self new update60251"
	self withUpdateLog: '19072 Integrate support for opening an extra Morphic world in an OSWindow
	https://pharo.fogbugz.com/f/cases/19072'.
	self loadTogether: self script60251 merge: false.
	self loadConfiguration: 'OSWindow' version: '1.2.15'.
[ UIManager default terminateUIProcess; spawnNewProcess. ] fork.
	self flushCaches.
