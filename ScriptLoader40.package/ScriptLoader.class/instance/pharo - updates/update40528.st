update40528
	"self new update40528"
	self withUpdateLog: '15028 MorphTreeChangeRequest>>change: does not need the respondTo:
	https://pharo.fogbugz.com/f/cases/15028

15016 clean Spec: ValueHolder exposition
	https://pharo.fogbugz.com/f/cases/15016

'.
	self loadTogether: self script528 merge: false.
	self flushCaches.
self cleanRepositories.
