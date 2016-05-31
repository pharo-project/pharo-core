update60052
	"self new update60052"
	self withUpdateLog: '18370 GlamourCore 4.15
	https://pharo.fogbugz.com/f/cases/18370'.
	self loadTogether: self script60052 merge: false.
	self loadConfiguration: 'GlamourCore' version: '4.15'.self flushCaches.
