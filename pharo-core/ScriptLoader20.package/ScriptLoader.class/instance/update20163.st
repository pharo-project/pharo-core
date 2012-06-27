pharo - updates
update20163
	"self new update20163"
	self withUpdateLog: 'Issue 5972:	Clean in perform: aSelector orSendTo: another
	http://code.google.com/p/pharo/issues/detail?id=5972
	
Issue 6175:	Spec example has Undeclared reference
	http://code.google.com/p/pharo/issues/detail?id=6175
	
Issue 6176:	Add Zodiac https support
	http://code.google.com/p/pharo/issues/detail?id=6176
'.
	self loadTogether: self script153 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
