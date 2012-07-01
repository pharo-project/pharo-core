pharo - updates
update20029
	"self new update20029"
	self withUpdateLog: 'Issue 5736:	deprecate #getSourceFor:in:
	http://code.google.com/p/pharo/issues/detail?id=5736
	
Issue 5741:	New version of NautilusCommon
	http://code.google.com/p/pharo/issues/detail?id=5741

Issue 5745:	numArgs, numTemps, endPC & isClean et al
	http://code.google.com/p/pharo/issues/detail?id=5745'.
	self loadTogether: self script23 merge: false.
	self flushCaches.
