update60040
	"self new update60040"
	self withUpdateLog: '14605 Integrate Epicea
	https://pharo.fogbugz.com/f/cases/14605'.
	self loadTogether: self script60040 merge: false.
	self loadConfiguration: 'Epicea' version: '7.8.p5'.self flushCaches.
