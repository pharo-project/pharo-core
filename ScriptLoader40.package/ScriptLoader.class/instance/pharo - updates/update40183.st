update40183
	"self new update40183"
	self withUpdateLog: '13903 move RGMethodDefinition>>#className:selector:isMetaSide: from Manifest-Core
	https://pharo.fogbugz.com/f/cases/13903
'.
	self loadTogether: self script183 merge: false.
	self flushCaches.
self cleanRepositories.
