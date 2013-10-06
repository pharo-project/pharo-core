update30432
	"self new update30432"
	self withUpdateLog: '11687 Merge Opal with Opal Repository
	https://pharo.fogbugz.com/f/cases/11687'.
	self loadTogether: self script111 merge: false.
	self flushCaches.
