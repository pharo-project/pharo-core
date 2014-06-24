update30850
	"self new update30850"
	self withUpdateLog: '13349 PackPort to 3: 11987 Launching ProfStef should not require initials
	https://pharo.fogbugz.com/f/cases/13349

'.
	self loadTogether: self script112 merge: false.
	self flushCaches.
