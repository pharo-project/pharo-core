update50650
	"self new update50650"
	self withUpdateLog: '17837 Revert changes to fast table morph from glamour version 3.15
	https://pharo.fogbugz.com/f/cases/17837'.
	self loadTogether: self script50650 merge: false.
	self loadConfiguration: 'GlamourCore' version: '4.7'.self flushCaches.
