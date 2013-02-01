pharo - updates
update20428
	"self new update20428"
	self withUpdateLog: 'Issue 7097:	VirtualMachine class improvements
	http://code.google.com/p/pharo/issues/detail?id=7097
	
Issue 7095:	Add GoferResolvedReference >> #merge method
	http://code.google.com/p/pharo/issues/detail?id=7095
	
Issue 7096:	Better option protocol for CommandLineHandler
	http://code.google.com/p/pharo/issues/detail?id=7096
	
Issue 7094:	Removing some Object methods
	http://code.google.com/p/pharo/issues/detail?id=7094
	
'.
	self loadTogether: self script407 merge: false.
	self flushCaches.
