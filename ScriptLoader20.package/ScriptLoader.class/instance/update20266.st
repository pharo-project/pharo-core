pharo - updates
update20266
	"self new update20266"
	self withUpdateLog: 'Issue 6591:	TextInputFieldModel acceptOnCR: not working
	http://code.google.com/p/pharo/issues/detail?id=6591
	
Issue 6583:	Two RIng tests failing
	http://code.google.com/p/pharo/issues/detail?id=6583'.
	self loadTogether: self script253 merge: false.
	ScriptLoader new unregisterPackage: 'Spec'.
.
	self flushCaches.
