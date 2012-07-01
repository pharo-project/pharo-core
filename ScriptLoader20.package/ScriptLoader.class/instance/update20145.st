pharo - updates
update20145
	"self new update20145"
	self withUpdateLog: 'Issue 5945:	Nice packaging for Text stuff
	http://code.google.com/p/pharo/issues/detail?can=2&q=5945'.
	self loadTogether: self script135 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
