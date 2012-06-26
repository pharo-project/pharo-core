pharo - updates
update20060
	"self new update20060"
	self withUpdateLog: 'Issue 5846:	register correct message browser
	http://code.google.com/p/pharo/issues/detail?id=5846
	
Issue 5845:	MCRepositoryGroup>>removeHTTPRepositoryLocationNamed: bad category
	http://code.google.com/p/pharo/issues/detail?id=5845'.
	self loadTogether: self script50 merge: false.
	Smalltalk 
		at: #FlatMessageListBrowser 
		ifPresent: [ :c | c registerToolsOn: Smalltalk tools ].
ScriptLoader new unloadPackageNamed: 'ScriptLoader13'.
	self flushCaches.
