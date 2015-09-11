update50320
	"self new update50320"
	self withUpdateLog: '16546 Integrate Versionner 
	https://pharo.fogbugz.com/f/cases/16546'.
	self loadTogether: self script50320 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.4'.self flushCaches.
