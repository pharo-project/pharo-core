pharo - updates
update20447
	"self new update20447"
	self withUpdateLog: 'Issue 7155:	Implement storeOn on LogicaFont to prevent an infinite loop while exporting settings
	http://code.google.com/p/pharo/issues/detail?id=7155
	
Issue 6892:	Nautilus runs abstract Test
	http://code.google.com/p/pharo/issues/detail?id=6892
	
Issue 4965:	Choosing from Unknown variable... Please correct list has no effect
	http://code.google.com/p/pharo/issues/detail?id=4965'.
	self loadTogether: self script426 merge: false.
	self flushCaches.
