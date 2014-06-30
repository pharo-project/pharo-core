update40055
	"self new update40055"
	self withUpdateLog: '13441 Small code critique cleanup in Tools
	https://pharo.fogbugz.com/f/cases/13441

13442 add test to classes for checking non-ivar slots are used
	https://pharo.fogbugz.com/f/cases/13442

13443 remove #storeDataOn: from SmalltalkImage
	https://pharo.fogbugz.com/f/cases/13443'.
	self loadTogether: self script55 merge: false.
	SmalltalkImage removeSelector: #storeDataOn:.
ScriptLoader new deletePackage: 'System-ObjectStorage'.
	self flushCaches.
