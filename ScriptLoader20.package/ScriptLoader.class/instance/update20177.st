pharo - updates
update20177
	"self new update20177"
	self withUpdateLog: 'Issue 6234:	padRight: is doing a padLeft:
	http://code.google.com/p/pharo/issues/detail?id=6234
	
Issue 6233:	Extract log file behavior from SmalltalkImage god object
	http://code.google.com/p/pharo/issues/detail?id=6233
	
Issue 5495:	Compiler depending on TextStyle
	http://code.google.com/p/pharo/issues/detail?id=5495'.
	self loadTogether: self script167 merge: false.
	self flushCaches.
