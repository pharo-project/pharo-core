update60056
	"self new update60056"
	self withUpdateLog: '18378 ConfigurationOfVersionner has wrong stable version
	https://pharo.fogbugz.com/f/cases/18378

18261 move StartupPreferencesLoader examples to the class comment
	https://pharo.fogbugz.com/f/cases/18261

18381 ConfigurationOfCatalog is not in sync with current Pharo package versions
	https://pharo.fogbugz.com/f/cases/18381

18373 Epiceas lost changes detector is too slow
	https://pharo.fogbugz.com/f/cases/18373'.
	self loadTogether: self script60056 merge: false.
	self loadConfiguration: 'Epicea' version: '7.92.p5'.self flushCaches.
