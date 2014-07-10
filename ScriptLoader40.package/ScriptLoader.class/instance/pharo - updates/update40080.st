update40080
	"self new update40080"
	self withUpdateLog: '13530 Add api to remove selection of text model
	https://pharo.fogbugz.com/f/cases/13530

13533 Smart Suggestions for more tools
	https://pharo.fogbugz.com/f/cases/13533

13534 Remove some unused "to be removed as soon as possible" methods from Ring
	https://pharo.fogbugz.com/f/cases/13534

'.
	self loadTogether: self script80 merge: false.
	self flushCaches.
self cleanRepositories.
