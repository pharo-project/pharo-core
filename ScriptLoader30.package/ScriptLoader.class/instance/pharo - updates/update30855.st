update30855
	"self new update30855"
	self withUpdateLog: '13902 inconsistent behaviour when debugging Pharo3.0
	https://pharo.fogbugz.com/f/cases/13902

13858 Backport 3.0 case 13857
	https://pharo.fogbugz.com/f/cases/13858

'.
	self loadTogether: self script117 merge: false.
	self flushCaches.
