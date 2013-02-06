pharo - updates
update20502
	"self new update20502"
	self withUpdateLog: '- Issue 7347:	Spec-Widgets. Thanks Andrei Chis.
	http://code.google.com/p/pharo/issues/detail?id=7347
	
- Issue 7149:	Selection is wrong in senders and Implementors. Thanks Alexandre Bergel and Milton Mamani.
	http://code.google.com/p/pharo/issues/detail?id=7149

- Issue 7348:	Enhancing SmallLintRules
	http://code.google.com/p/pharo/issues/detail?id=7348'.
	self loadTogether: self script480 merge: false.
	self flushCaches.
