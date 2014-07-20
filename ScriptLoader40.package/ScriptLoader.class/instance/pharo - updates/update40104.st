update40104
	"self new update40104"
	self withUpdateLog: '13605 Slider can use setValueSelector instead of accessor everywhere
	https://pharo.fogbugz.com/f/cases/13605

13603 remove extensions classOrMetaClass and messageName form Context
	https://pharo.fogbugz.com/f/cases/13603

'.
	self loadTogether: self script104 merge: false.
	self flushCaches.
self cleanRepositories.
