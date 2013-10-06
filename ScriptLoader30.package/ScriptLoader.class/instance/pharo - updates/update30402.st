update30402
	"self new update30402"
	self withUpdateLog: '11617 ConfigurationCommandLine does not handle merge correctly
	https://pharo.fogbugz.com/f/cases/11617
	
11609 Diff morph should only use colored icons to indicate add / remove
	https://pharo.fogbugz.com/f/cases/11609

	
'.
	self loadTogether: self script194 merge: false.
	self flushCaches.
