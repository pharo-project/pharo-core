update30735
	"self new update30735"
	self withUpdateLog: '12469 Sometimes an empty protocol is created
	https://pharo.fogbugz.com/f/cases/12469

'.
	self loadTogether: self script388 merge: false.
	self flushCaches.
