update50732
	"self new update50732"
	self withUpdateLog: '18121 Hundreds of references to undeclared variables in Fuel
	https://pharo.fogbugz.com/f/cases/18121'.
	self loadTogether: self script50732 merge: false.
	self loadConfiguration: 'Fuel' version: '2.1.1'.self flushCaches.
