pharo - updates
update20355
	"self new update20355"
	self withUpdateLog: 'Issue 6849:	SystemDictionary should not use nil as a sortBlock
	http://code.google.com/p/pharo/issues/detail?id=6849
	
Issue 6838:	Undeclareds in Jenkins test runner
	http://code.google.com/p/pharo/issues/detail?id=6838
	
Issue 6837:	Failing test: Undeclared in MetacelloPlatform>>createRepository:
	http://code.google.com/p/pharo/issues/detail?id=6837
	
Issue 6833:	Failing test: ConfigurationCommandLineHandlerTest
	http://code.google.com/p/pharo/issues/detail?id=6833'.
	self loadTogether: self script337 merge: false.
	self flushCaches.
