update50057
	"self new update50057"
	self withUpdateLog: '15581 add support for reifying information + pass it to the meta object
	https://pharo.fogbugz.com/f/cases/15581'.
	self loadTogether: self script50057 merge: false.
	self flushCaches.
