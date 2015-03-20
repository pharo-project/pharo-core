update40569
	"self new update40569"
	self withUpdateLog: '13295 Integrate Versionner 2.8
	https://pharo.fogbugz.com/f/cases/13295'.
	self loadTogether: self script569 merge: false.
	self loadConfiguration: 'Versionner' version: '2.8'.self flushCaches.
