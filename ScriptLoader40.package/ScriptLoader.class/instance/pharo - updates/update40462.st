update40462
	"self new update40462"
	self withUpdateLog: '14757 Use code-critics category in the package manifest to manage false positives
	https://pharo.fogbugz.com/f/cases/14757

14773 Gofer/Metacello test failing
	https://pharo.fogbugz.com/f/cases/14773

'.
	self loadTogether: self script462 merge: false.
	self flushCaches.
self cleanRepositories.
