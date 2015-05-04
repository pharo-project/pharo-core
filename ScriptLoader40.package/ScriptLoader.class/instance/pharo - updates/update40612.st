update40612
	"self new update40612"
	self withUpdateLog: '15417 TestRunner does not offer the RunCoverage functionality 
	https://pharo.fogbugz.com/f/cases/15417

15322 "Save As" does not properly save filenames with dots in them
	https://pharo.fogbugz.com/f/cases/15322'.
	self loadTogether: self script612 merge: false.
	self flushCaches.
