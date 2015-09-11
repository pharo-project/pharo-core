update50319
	"self new update50319"
	self withUpdateLog: '16503 Remove senders of subscribe:send:to: in Rubric
	https://pharo.fogbugz.com/f/cases/16503'.
	self loadTogether: self script50319 merge: false.
	self loadConfiguration: 'Rubric' version: '1.18.6'.self flushCaches.
