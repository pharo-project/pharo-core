update50311
	"self new update50311"
	self withUpdateLog: '16504 NewVersionBrowser and RGMethodDefinition vs. CompiledMethod
	https://pharo.fogbugz.com/f/cases/16504

16496 Provide context menu icons in Catalog browser
	https://pharo.fogbugz.com/f/cases/16496

16487 Dropping methods on empty areas of class/method category pane raises SubscriptOutOfBounds
	https://pharo.fogbugz.com/f/cases/16487'.
	self loadTogether: self script50311 merge: false.
	self loadConfiguration: 'Catalog' version: 'stable'.self flushCaches.
