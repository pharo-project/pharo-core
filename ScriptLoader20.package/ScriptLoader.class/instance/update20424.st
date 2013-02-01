pharo - updates
update20424
	"self new update20424"
	self withUpdateLog: 'Issue 7078:	Do not hard code Browser in Hudson Build Tools
	http://code.google.com/p/pharo/issues/detail?id=7078
	
Issue 7073:	Inconsistent System Browser selection
	http://code.google.com/p/pharo/issues/detail?id=7073
	
Issue 6928:	Obsolete class after running all tests
	http://code.google.com/p/pharo/issues/detail?id=6928'.
	self loadTogether: self script403 merge: false.
	ActiveWorld initializeDesktopCommandKeySelectors.
	self flushCaches.
