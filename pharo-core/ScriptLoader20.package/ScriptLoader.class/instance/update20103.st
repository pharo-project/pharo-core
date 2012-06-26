pharo - updates
update20103
	"self new update20103"
	self withUpdateLog: ' Issue 6006:	mac vm tests get stucked on mac
	http://code.google.com/p/pharo/issues/detail?id=6006
	
Issue 6003:	Missing Class Comment for FreetypeFontProvider
	http://code.google.com/p/pharo/issues/detail?id=6003
	
Issue 6001:	Deprecated ReferenceStream
	http://code.google.com/p/pharo/issues/detail?id=6001'.
	self loadTogether: self script93 merge: false.
	self flushCaches.
