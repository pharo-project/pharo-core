update30457
	"self new update30457"
	self withUpdateLog: '11765 whichSelectorsReallyRead: --> fix whichSelectorsRead: instead
	https://pharo.fogbugz.com/f/cases/11765
	
11791 trivial critic cleanup in ClassOrganizer
	https://pharo.fogbugz.com/f/cases/11791
	
11802 Fix failing tests Ecompletion
	https://pharo.fogbugz.com/f/cases/11802
'.
	self loadTogether: self script112 merge: false.
	self flushCaches.
