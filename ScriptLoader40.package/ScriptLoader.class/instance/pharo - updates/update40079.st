update40079
	"self new update40079"
	self withUpdateLog: '13529 Move PluggableSlider and subclasses to the same package as Slider
	https://pharo.fogbugz.com/f/cases/13529
	
13375 Should create a package Morphic-Widgest-ColorSelector
	https://pharo.fogbugz.com/f/cases/13375

'.
	self loadTogether: self script79 merge: false.
	self flushCaches.
self cleanRepositories.
