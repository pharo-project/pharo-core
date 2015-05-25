update50065
	"self new update50065"
	self withUpdateLog: '15606 Reflectivity: Add more reifications
	https://pharo.fogbugz.com/f/cases/15606

15604 Clean up OldClassBuilderAdapter more...
	https://pharo.fogbugz.com/f/cases/15604'.
	self loadTogether: self script50065 merge: false.
	self flushCaches.
