update60059
	"self new update60059"
	self withUpdateLog: '18376 Do not allow assignments to global vars
	https://pharo.fogbugz.com/f/cases/18376

18381 ConfigurationOfCatalog is not in sync with current Pharo package versions
	https://pharo.fogbugz.com/f/cases/18381

18377 ConfigurationOfGTEventRecorder is not in sync with the current package versions
	https://pharo.fogbugz.com/f/cases/18377

18396 Glamour-FastTable extends projects that are loaded after it
	https://pharo.fogbugz.com/f/cases/18396'.
	self loadTogether: self script60059 merge: false.
	self flushCaches.
