update40125
	"self new update40125"
	self withUpdateLog: '13692 Small cleanup GroupManageUI: #prettyName not needed (same as printString now on methods and classes)
	https://pharo.fogbugz.com/f/cases/13692

13670 Encoder (class from Old Compiler) is referenced by BlockLocalTempCounter
	https://pharo.fogbugz.com/f/cases/13670

13691 Small Code Critique clean in Morphic-Widgets-Pluggable
	https://pharo.fogbugz.com/f/cases/13691

13689 Wrong context when debugging a warning
	https://pharo.fogbugz.com/f/cases/13689

'.
	self loadTogether: self script125 merge: false.
	self flushCaches.
self cleanRepositories.
