pharo - updates
update20160
	"self new update20160"
	self withUpdateLog: 'Issue 6042:	CompiledMethod>>#comment method is not working
	http://code.google.com/p/pharo/issues/detail?id=6042
	
Issue 6103:	DataStream doesnt want to die
	http://code.google.com/p/pharo/issues/detail?id=6103
	
Issue 6058:	Tiny improvement in PluggableTextMorph
	http://code.google.com/p/pharo/issues/detail?id=6058'.
	self loadTogether: self script150 merge: false.
	RPackageOrganizer  default unregisterPackageNamed: #'System-Object Storage'.
.
	self flushCaches.
