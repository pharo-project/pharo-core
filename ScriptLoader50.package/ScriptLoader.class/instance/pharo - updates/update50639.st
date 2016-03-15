update50639
	"self new update50639"
	self withUpdateLog: '17788 Clean old startup mechanism - part 5
	https://pharo.fogbugz.com/f/cases/17788'.
	self loadTogether: self script50639 merge: false.
	self flushCaches.
