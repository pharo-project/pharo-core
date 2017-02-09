update60380
	"self new update60380"
	self withUpdateLog: '19680 DNU bug in SLICE 18901
	https://pharo.fogbugz.com/f/cases/19680

19679 STON Update Feb 2017
	https://pharo.fogbugz.com/f/cases/19679'.
	self loadTogether: self script60380 merge: false.
	self loadConfiguration: 'Ston' version: '0.23'.self flushCaches.
