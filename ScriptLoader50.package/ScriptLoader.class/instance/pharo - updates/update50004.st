update50004
	"self new update50004"
	self withUpdateLog: '15377 StartupLoader leftovers in StartupPreferencesLoader
	https://pharo.fogbugz.com/f/cases/15377

15354 Add <script> to #open in Monticello tools
	https://pharo.fogbugz.com/f/cases/15354

15355 Add MetaRepo for Pharo 40 in 5.0 config browser, also fix example method
	https://pharo.fogbugz.com/f/cases/15355

'.
	self loadTogether: self script613 merge: false.
	self flushCaches.
self cleanRepositories.
