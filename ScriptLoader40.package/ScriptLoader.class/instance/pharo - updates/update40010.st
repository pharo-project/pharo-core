update40010
	"self new update40010"
	self withUpdateLog: '13270 Starting to Clean Fonts - Package introduction
	https://pharo.fogbugz.com/f/cases/13270

'.
	self loadTogether: self script10 merge: false.
	self flushCaches.
