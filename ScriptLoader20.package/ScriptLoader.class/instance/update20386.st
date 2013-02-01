pharo - updates
update20386
	"self new update20386"
	self withUpdateLog: 'Issue 6933:	Fixing the fact that typing ...
	http://code.google.com/p/pharo/issues/detail?id=6933
	
Issue 6853:	Monticello merge conflicts on reordered package names
	http://code.google.com/p/pharo/issues/detail?id=6853
	
Issue 6760:	Traits dont get repackaged
	http://code.google.com/p/pharo/issues/detail?id=6760
	
Issue 6938:	poolDictionaryNames in wrong package
	http://code.google.com/p/pharo/issues/detail?id=6938
	
'.
	self loadTogether: self script366 merge: false.
	self flushCaches.
