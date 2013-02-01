pharo - updates
update20390
	"self new update20390"
	self withUpdateLog: 'Issue 6912:	#fancyText:font:color: has no senders, and is in strange place (AlignmentMorph)
	http://code.google.com/p/pharo/issues/detail?id=6912
	
Issue 6883:	Type Class refactoring
	http://code.google.com/p/pharo/issues/detail?id=6883
	
Issue 6947:	Small cleanup for DebuggerMethodMap
	http://code.google.com/p/pharo/issues/detail?id=6947'.
	self loadTogether: self script369 merge: false.
	self flushCaches.
