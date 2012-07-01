pharo - updates
update20151
	"self new update20151"
	self withUpdateLog: '-  Issue 6119:	Cursor keeps on blinking when changing position. Thanks Camillo Bruni.
	http://code.google.com/p/pharo/issues/detail?id=6119
	
-  Issue 6118:	Let a gofer refernce loads itself.
	http://code.google.com/p/pharo/issues/detail?id=6118

- Issue 6099:	Deprecate #value: for system progress (was red cross during updates). Thanks Sean DeNigris.
	http://code.google.com/p/pharo/issues/detail?id=6099

- Issue 6120:	Scriptloader needs some ci updates. Thanks ben and Stef :)
	http://code.google.com/p/pharo/issues/detail?id=6120'.
	self loadTogether: self script141 merge: false.
	self flushCaches.
