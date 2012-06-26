pharo - updates
update20153
	"self new update20153"
	self withUpdateLog: 'Issue 6069:	Test guard for 20132
	http://code.google.com/p/pharo/issues/detail?id=6069
	
Issue 6041:	smart characters behave wrong on deletion
	http://code.google.com/p/pharo/issues/detail?id=6041
	
Issue 5945:	Nice packaging for Text stuff
	http://code.google.com/p/pharo/issues/detail?id=5945'.
	self loadTogether: self script143 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
