update40200
	"self new update40200"
	self withUpdateLog: '13915 Remove apparently unneeded reference to ThreadSafeTranscript
	https://pharo.fogbugz.com/f/cases/13915

13951 Small Settings Cleanup
	https://pharo.fogbugz.com/f/cases/13951

'.
	self loadTogether: self script200 merge: false.
	self flushCaches.
self cleanRepositories.
