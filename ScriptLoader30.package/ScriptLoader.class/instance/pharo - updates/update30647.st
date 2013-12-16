update30647
	"self new update30647"
	self withUpdateLog: '12366 Merge Opal Repo with image
	https://pharo.fogbugz.com/f/cases/12366
	
12166 Add Settings to turn off compiler warnings
	https://pharo.fogbugz.com/f/cases/12166
	'.
	self loadTogether: self script300 merge: false.
	self flushCaches.
