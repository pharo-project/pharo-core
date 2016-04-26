update50715
	"self new update50715"
	self withUpdateLog: '18080 New Help about adding World Menu Items
	https://pharo.fogbugz.com/f/cases/18080

18091 Comment some existing settings
	https://pharo.fogbugz.com/f/cases/18091

18089 Update Rubric 2.19.3
	https://pharo.fogbugz.com/f/cases/18089

18090 Update Versionner 2.13.12
	https://pharo.fogbugz.com/f/cases/18090'.
	self loadTogether: self script50715 merge: false.
	self loadConfiguration: 'Rubric' version: '2.19.3'.
self loadConfiguration: 'Versionner' version: '2.13.12'.self flushCaches.
