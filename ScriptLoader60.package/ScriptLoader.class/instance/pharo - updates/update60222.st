update60222
	"self new update60222"
	self withUpdateLog: '19085 Integrate Epicea 8
	https://pharo.fogbugz.com/f/cases/19085'.
	self loadTogether: self script60222 merge: false.
	self loadConfiguration: 'Epicea' version: '8.0.1'.self flushCaches.
