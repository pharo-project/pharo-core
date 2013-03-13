pharo - updates
update20589
	"self new update20589"
	self withUpdateLog: 'Issue 7660:	comments in isAbstractClass are wrong
	https://code.google.com/p/pharo/issues/detail?id=7660
	
Issue 7659:	use more efficient setSourcePointer: in CompiledMethod
	https://code.google.com/p/pharo/issues/detail?id=7659
	
(almost the last one :)
'.
	self loadTogether: self script563 merge: false.
	self flushCaches.
