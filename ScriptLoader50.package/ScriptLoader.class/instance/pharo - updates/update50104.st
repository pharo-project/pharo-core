update50104
	"self new update50104"
	self withUpdateLog: '15636 PharoTutorial contents
	https://pharo.fogbugz.com/f/cases/15636

15731 Kill the last two #asTimeStamp methods
	https://pharo.fogbugz.com/f/cases/15731

15734 More tests for reifications
	https://pharo.fogbugz.com/f/cases/15734'.
	self loadTogether: self script50104 merge: false.
	self flushCaches.
