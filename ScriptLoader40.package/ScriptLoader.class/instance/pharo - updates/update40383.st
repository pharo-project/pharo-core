update40383
	"self new update40383"
	self withUpdateLog: '14498 Unnecessary instance creation in OrderedCollection>>#asOrderedCollection?
	https://pharo.fogbugz.com/f/cases/14498'.
	self loadTogether: self script383 merge: false.
	self flushCaches.
