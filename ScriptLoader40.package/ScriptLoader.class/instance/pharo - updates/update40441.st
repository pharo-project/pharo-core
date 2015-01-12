update40441
	"self new update40441"
	self withUpdateLog: '14720 Add support for Class Instance Slots
	https://pharo.fogbugz.com/f/cases/14720'.
	self loadTogether: self script441 merge: false.
	self flushCaches.
