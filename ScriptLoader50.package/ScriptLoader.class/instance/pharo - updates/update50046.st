update50046
	"self new update50046"
	self withUpdateLog: '15537 Update Rubric
	https://pharo.fogbugz.com/f/cases/15537'.
	self loadTogether: self script50046 merge: false.
	self loadConfiguration: 'Rubric' version: '1.3'.self flushCaches.
