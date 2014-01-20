update30710
	"self new update30710"
	self withUpdateLog: '12449 Nautilus setting "Show groups on top" breaks automatic group update
	https://pharo.fogbugz.com/f/cases/12449

12490 Unloading package does not unload correctly
	https://pharo.fogbugz.com/f/cases/12490

'.
	self loadTogether: self script363 merge: false.
	self flushCaches.
