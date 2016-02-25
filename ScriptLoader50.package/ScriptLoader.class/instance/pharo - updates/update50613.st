update50613
	"self new update50613"
	self withUpdateLog: '17700 add stub NB classes to easy migrations
	https://pharo.fogbugz.com/f/cases/17700'.
	self loadTogether: self script50613 merge: false.
	self flushCaches.
