update60100
	"self new update60100"
	self withUpdateLog: '18545 Update Fuel
	https://pharo.fogbugz.com/f/cases/18545

18535 Nautilus should be open to support different method categorizer
	https://pharo.fogbugz.com/f/cases/18535'.
	self loadTogether: self script60100 merge: false.
	self loadConfiguration: 'Fuel' version: '2.1.6'.self flushCaches.
