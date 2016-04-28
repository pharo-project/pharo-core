update50727
	"self new update50727"
	self withUpdateLog: '18114 Incorrect handling of events when raising windows to the front
	https://pharo.fogbugz.com/f/cases/18114

18117 Fuel fix for class substitutions
	https://pharo.fogbugz.com/f/cases/18117'.
	self loadTogether: self script50727 merge: false.
	self loadConfiguration: 'Fuel' version: '2.1.0'.self flushCaches.
