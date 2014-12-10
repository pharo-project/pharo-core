update40409
	"self new update40409"
	self withUpdateLog: '14589 Integrate Spotter
	https://pharo.fogbugz.com/f/cases/14589'.
	self loadTogether: self script409 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.0.0'.
KMRepository reset .
	self flushCaches.
