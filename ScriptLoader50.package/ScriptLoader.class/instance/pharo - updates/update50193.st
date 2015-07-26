update50193
	"self new update50193"
	self withUpdateLog: '16041 Rubric is not using source code font anymore since update 50192
	https://pharo.fogbugz.com/f/cases/16041'.
	self loadTogether: self script50193 merge: false.
	self loadConfiguration: 'Rubric' version: '1.16.1'.self flushCaches.
