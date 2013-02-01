pharo - updates
update20405
	"self new update20405"
	self withUpdateLog: 'Issue 6978:	UpdateStreamer and UpdateStreamerTest should be in own packages	
	http://code.google.com/p/pharo/issues/detail?id=6978
	
Issue 6977:	Move LoadUpdatesCommandLineHandler close to UpdateStreamer
	http://code.google.com/p/pharo/issues/detail?id=6977
	
Issue 6967:	move TestRunnerCommandLineHandler into HudsonBuildTools20
	http://code.google.com/p/pharo/issues/detail?id=6967
	
Issue 6993:	update Pharo Kernel generation
	http://code.google.com/p/pharo/issues/detail?id=6993'.
	self loadTogether: self script384 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
