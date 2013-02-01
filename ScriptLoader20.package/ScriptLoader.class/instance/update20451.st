pharo - updates
update20451
	"self new update20451"
	self withUpdateLog: 'Issue 7175:	Manifest fixing
	http://code.google.com/p/pharo/issues/detail?id=7175
	
Issue 7172:	CompiledMethod #getSource should call #sourceCode
	http://code.google.com/p/pharo/issues/detail?id=7172
	
Issue 7161:	MCToolWindowBuilder is not used
	http://code.google.com/p/pharo/issues/detail?id=7161
	'.
	self loadTogether: self script430 merge: false.
	self flushCaches.
