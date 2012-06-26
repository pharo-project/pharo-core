pharo - updates
update20139
	"self new update20139"
	self withUpdateLog: '- Issue 6081:	Add basenameWithoutExtension to FileReference and Path. 
		http://code.google.com/p/pharo/issues/detail?id=6081'.
	self loadTogether: self script129 merge: false.
	self flushCaches.
