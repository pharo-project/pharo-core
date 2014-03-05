update30790
	"self new update30790"
	self withUpdateLog: '13000 Integrate Fuel 1.9.3
	https://pharo.fogbugz.com/f/cases/13000

'.
	self loadTogether: self script443 merge: false.
	self flushCaches.
