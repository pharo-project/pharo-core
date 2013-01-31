pharo - updates
update20323
	"self new update20323"
	self withUpdateLog: 'Issue 6766:	Simplify Debugger Stack menu
	http://code.google.com/p/pharo/issues/detail?id=6766
	
Issue 6714:	Incorrect bounds in IndentingListItemMorph
	http://code.google.com/p/pharo/issues/detail?id=6714'.
	self loadTogether: self script308 merge: false.
	self flushCaches.
