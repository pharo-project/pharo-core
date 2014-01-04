update30670
	"self new update30670"
	self withUpdateLog: '12520 Can not delete directory from File Browser
	https://pharo.fogbugz.com/f/cases/12520
	
10551 All Monticello Repositories are added to all Working Copies
	https://pharo.fogbugz.com/f/cases/10551
	
12467 Pharo crashes if Monticello can not create the package-cache directory
	https://pharo.fogbugz.com/f/cases/12467'.
	self loadTogether: self script323 merge: false.
	self flushCaches.
