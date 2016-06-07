update60065
	"self new update60065"
	self withUpdateLog: '18415 Fix Regex-Core extensions capitalization
	https://pharo.fogbugz.com/f/cases/18415

18404 ConfigurationOfUnifiedFFI not in sync with current Pharo package versions
	https://pharo.fogbugz.com/f/cases/18404

18401 The ConfigurationOfRubric is not in sync
	https://pharo.fogbugz.com/f/cases/18401'.
	self loadTogether: self script60065 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.20.2'.
self loadConfiguration: 'Rubric' version: '2.20.1'.self flushCaches.
