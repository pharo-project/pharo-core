update50090
	"self new update50090"
	self withUpdateLog: '15693 refactoring of GTAnnouncement to have less duplication
	https://pharo.fogbugz.com/f/cases/15693

15679 Writing only one quote at the beginning of a method produces a syntax error.
	https://pharo.fogbugz.com/f/cases/15679

15685 Adapt font color to current theme in Rubric
	https://pharo.fogbugz.com/f/cases/15685'.
	self loadTogether: self script50090 merge: false.
	self loadConfiguration: 'GTSpotter' version: '1.2.5'.
self loadConfiguration: 'Rubric' version: '1.3.1'.self flushCaches.
