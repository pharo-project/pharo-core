pharo - updates
update20166
	"self new update20166"
	self withUpdateLog: 'Issue 6185:	Number>>#@ should not be part of Graphics
	http://code.google.com/p/pharo/issues/detail?id=6185
	
Issue 6143:	MIME decoding and Unicode not working
	http://code.google.com/p/pharo/issues/detail?id=6143	'.
	self loadTogether: self script156 merge: false.
	self flushCaches.
