update30826
	"self new update30826"
	self withUpdateLog: '13202 self halt <Restart> then several <Over> gives endless DNU
	https://pharo.fogbugz.com/f/cases/13202

'.
	self loadTogether: self script479 merge: false.
	self flushCaches.
