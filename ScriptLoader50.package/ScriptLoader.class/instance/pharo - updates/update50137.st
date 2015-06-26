update50137
	"self new update50137"
	self withUpdateLog: '15843 Tiny cleanup Opal
	https://pharo.fogbugz.com/f/cases/15843

14776 Create test package for Jobs
	https://pharo.fogbugz.com/f/cases/14776

15841 Removing Monticello dead and duplicated code
	https://pharo.fogbugz.com/f/cases/15841'.
	self loadTogether: self script50137 merge: false.
	self flushCaches.
