update40624
	"self new update40624"
	self withUpdateLog: '16813 Unclosed file streams
	https://pharo.fogbugz.com/f/cases/16813'.
	self loadTogether: self script624 merge: false.
	self flushCaches.
