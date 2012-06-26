pharo - updates
update20064
	"self new update20064"
	self withUpdateLog: 'Issue 5838:	Error: Could not access http://www.squeaksource.com/MetaRepoForPharo20
	http://code.google.com/p/pharo/issues/detail?id=5838
	
Issue 5806:	Add an encrypted mode on PluggableTextFieldMorph
	http://code.google.com/p/pharo/issues/detail?id=5806
	
Issue 5712:	Do the Icons need attribution?
	http://code.google.com/p/pharo/issues/detail?id=5712'.
	self loadTogether: self script54 merge: false.
	self flushCaches.
