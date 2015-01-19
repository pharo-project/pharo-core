update40450
	"self new update40450"
	self withUpdateLog: '14745 Spotter version 1.0.7
	https://pharo.fogbugz.com/f/cases/14745

14744 GTools version 2.0.9
	https://pharo.fogbugz.com/f/cases/14744'.
	self loadTogether: self script450 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.0.7'.
self loadConfiguration: 'GTPlaygroundCore' version: '2.0.9'.
KMRepository reset.
	self flushCaches.
