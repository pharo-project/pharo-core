pharo - updates
update20149
	"self new update20149"
	self withUpdateLog: 'Issue 6097:	Bad source and changes path for one click on Windows (Jenkins?)
	http://code.google.com/p/pharo/issues/detail?id=6097
	
Issue 6096:	WindowsResolver sends "self default" but no method #default is implemented
	http://code.google.com/p/pharo/issues/detail?id=6096'.
	self loadTogether: self script139 merge: false.
	self flushCaches.
