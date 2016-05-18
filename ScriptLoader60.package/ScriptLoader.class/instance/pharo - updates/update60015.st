update60015
	"self new update60015"
	self withUpdateLog: '18039 Missing testing methods on vmParameter
	https://pharo.fogbugz.com/f/cases/18039

18250 Fuel has no platform for Pharo 6.0
	https://pharo.fogbugz.com/f/cases/18250

18235 isClassOrTrait is false for Metaclasses
	https://pharo.fogbugz.com/f/cases/18235'.
	self loadTogether: self script60015 merge: false.
	self loadConfiguration: 'Fuel' version: '2.1.5'.self flushCaches.
