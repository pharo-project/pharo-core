pharo - updates
update20480
	"self new update20480"
	self withUpdateLog: 'Issue 7262:	add --save option to TestRunnerCommandLineHandler
	http://code.google.com/p/pharo/issues/detail?id=7262
	
Issue 6920:	dragging a class from a package to another one does not remove the element from the source package
	http://code.google.com/p/pharo/issues/detail?id=6920'.
	self loadTogether: self script458 merge: false.
	self flushCaches.
