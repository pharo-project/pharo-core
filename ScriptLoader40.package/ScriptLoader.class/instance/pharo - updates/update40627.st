update40627
	"self new update40627"
	self withUpdateLog: '17951 MenuMorph does not accept Associations as items
	https://pharo.fogbugz.com/f/cases/17951'.
	self loadTogether: self script627 merge: false.
	self flushCaches.
