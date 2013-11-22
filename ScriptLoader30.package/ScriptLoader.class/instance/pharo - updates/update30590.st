update30590
	"self new update30590"
	self withUpdateLog: '12221 Fix a warning raised by the monkey in DiffMorph
	https://pharo.fogbugz.com/f/cases/12221
	
12214 Propagate the notion of last node clicked to the node model
	https://pharo.fogbugz.com/f/cases/12214
'.
	self loadTogether: self script245 merge: false.
	self flushCaches.
