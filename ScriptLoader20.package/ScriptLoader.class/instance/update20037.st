pharo - updates
update20037
	"self new update20037"
	self withUpdateLog: 'Issue 5763:	ProtoObject>>#~~ cleanup
	http://code.google.com/p/pharo/issues/detail?id=5763
	
Issue 5743:	Cannot load editions of class side methods
	http://code.google.com/p/pharo/issues/detail?id=5743
	
Issue 2063:	NumberTest
	http://code.google.com/p/pharo/issues/detail?id=2063
'.
	self loadTogether: self script31 merge: false.
	self flushCaches.
