pharo - updates
update20427
	"self new update20427"
	self withUpdateLog: 'Issue 7093:	DynamicVariable>>#value:during: should return the value of evaluating its second block argument
	http://code.google.com/p/pharo/issues/detail?id=7093
	
Issue 7092:	MultiByteFileStream>>#readInto:startingAt:count: currently bypasses decoding
	http://code.google.com/p/pharo/issues/detail?id=7092'.
	self loadTogether: self script406 merge: false.
	self flushCaches.
