update40249
	"self new update40249"
	self withUpdateLog: '14065 Spec WorldModel should not change theme background
	https://pharo.fogbugz.com/f/cases/14065'.
	self loadTogether: self script249 merge: false.
	self flushCaches.
