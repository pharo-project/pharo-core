pharo - updates
update20542
	"self new update20542"
	self withUpdateLog: 'Issue 7496:	MethodClassifier should ignore as yet unclassified when looking for other implementors
	http://code.google.com/p/pharo/issues/detail?id=7496
	
Issue 7429:	FileReferences have a confusing/wrong external representation
	http://code.google.com/p/pharo/issues/detail?id=7429'.
	self loadTogether: self script517 merge: false.
	self flushCaches.
