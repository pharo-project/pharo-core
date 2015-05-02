update50027
	"self new update50027"
	self withUpdateLog: '15457 Update Zinc to handle some deprecations in Pharo 5
	https://pharo.fogbugz.com/f/cases/15457

15463 Rubric turns text to transparent when styling
	https://pharo.fogbugz.com/f/cases/15463'.
	self loadTogether: self script636 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.6.4'.
self loadConfiguration: 'Rubric' version: '1.2.13'.self flushCaches.
