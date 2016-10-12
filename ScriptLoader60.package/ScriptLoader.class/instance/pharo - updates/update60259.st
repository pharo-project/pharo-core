update60259
	"self new update60259"
	self withUpdateLog: '19203 Debugging code left in Encoders
	https://pharo.fogbugz.com/f/cases/19203

19199 Enable / Disable options in context Menu in FastTable
	https://pharo.fogbugz.com/f/cases/19199'.
	self loadTogether: self script60259 merge: false.
	self loadConfiguration: 'FastTable' version: '0.10.5'.self flushCaches.
