update50267
	"self new update50267"
	self withUpdateLog: '16358 Can not commit three changed method to class TemporaryVariable
	https://pharo.fogbugz.com/f/cases/16358'.
	self loadTogether: self script50267 merge: false.
	self flushCaches.
