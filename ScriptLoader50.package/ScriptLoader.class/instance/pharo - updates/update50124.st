update50124
	"self new update50124"
	self withUpdateLog: '15809 Update Rubric
	https://pharo.fogbugz.com/f/cases/15809'.
	self loadTogether: self script50124 merge: false.
	self loadConfiguration: 'Rubric' version: '1.3.6'.self flushCaches.
