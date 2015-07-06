update50155
	"self new update50155"
	self withUpdateLog: '15904 fast table need to react better to selections and searches
	https://pharo.fogbugz.com/f/cases/15904

15894 nautilus need to take into account the new fast table when selecting and testing
	https://pharo.fogbugz.com/f/cases/15894'.
	self loadTogether: self script50155 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.3'.self flushCaches.
