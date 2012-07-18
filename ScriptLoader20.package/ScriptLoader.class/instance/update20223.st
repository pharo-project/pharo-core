pharo - updates
update20223
	"self new update20223"
	self withUpdateLog: 'Issue 6408:	inputWidgetForFileOrDirectoryWithAction: for Dummies
	http://code.google.com/p/pharo/issues/detail?id=6408
	
Issue 6406:	[BUG]: FileDialogWindow: Open on Absolute Path
	http://code.google.com/p/pharo/issues/detail?id=6406
	
Issue 6403:	handle obsolete classes in MessageSend >> value and value:
	http://code.google.com/p/pharo/issues/detail?id=6403
	
Issue 6401:	package System-PragmaCollector
	http://code.google.com/p/pharo/issues/detail?id=6401'.
	self loadTogether: self script211 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
