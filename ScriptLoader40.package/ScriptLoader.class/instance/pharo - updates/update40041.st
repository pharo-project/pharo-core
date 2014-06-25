update40041
	"self new update40041"
	self withUpdateLog: '13395 Add SHA256 HashFunction
	https://pharo.fogbugz.com/f/cases/13395

13379 ReleaseTests #testObsoleteClasses failing: AnObsoleteSourceWebBrowser
	https://pharo.fogbugz.com/f/cases/13379'.
	self loadTogether: self script41 merge: false.
	Smalltalk tools remove: #webBrowser.
	self flushCaches.
