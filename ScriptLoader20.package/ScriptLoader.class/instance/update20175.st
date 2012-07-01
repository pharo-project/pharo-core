pharo - updates
update20175
	"self new update20175"
	self withUpdateLog: 'Issue 6149:	getSourceReplacingSelectorWith: dependent on Text
	http://code.google.com/p/pharo/issues/detail?id=6149
	
Issue 3314:	[Kernel Dependencies] InstructionStream / Computer
	http://code.google.com/p/pharo/issues/detail?id=3314'.
	self loadTogether: self script165 merge: false.
	self flushCaches.
