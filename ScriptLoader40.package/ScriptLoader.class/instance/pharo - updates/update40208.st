update40208
	"self new update40208"
	self withUpdateLog: '13964 The examples in class WidgetExamples should be on the class side
	https://pharo.fogbugz.com/f/cases/13964

13966 Cleanup MorphicTests package
	https://pharo.fogbugz.com/f/cases/13966

13963 Cleanup Morphic-Widgets-Tree package
	https://pharo.fogbugz.com/f/cases/13963

13968 Provide clickable examples for Athens
	https://pharo.fogbugz.com/f/cases/13968

13970 Fix category typo in ProtoObject
	https://pharo.fogbugz.com/f/cases/13970

'.
	self loadTogether: self script208 merge: false.
	self flushCaches.
self cleanRepositories.
