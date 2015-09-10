update50315
	"self new update50315"
	self withUpdateLog: '16533 Multilingual-Languages and Multilingual-Encondings should not depend on Text-Scanning
	https://pharo.fogbugz.com/f/cases/16533

16520 Help topic for how to contribute to Pharo basecode
	https://pharo.fogbugz.com/f/cases/16520

'.
	self loadTogether: self script50315 merge: false.
	self flushCaches.
self cleanRepositories.
