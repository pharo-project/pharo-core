update40502
	"self new update40502"
	self withUpdateLog: '14960 Extend Duration with a human readable print option and some related accessors
	https://pharo.fogbugz.com/f/cases/14960

14963 addInstVarNamed: should use addSlot:
	https://pharo.fogbugz.com/f/cases/14963

14970 TheManifestBuilder>>removeManifestOf:(manifest is shadowed)
	https://pharo.fogbugz.com/f/cases/14970

14914 #initializeSlots: should not skip hidden slots
	https://pharo.fogbugz.com/f/cases/14914

'.
	self loadTogether: self script502 merge: false.
	self flushCaches.
self cleanRepositories.
