pharo - updates
update20027
	"self new update20027"
	self withUpdateLog: 'Issue 5731:	Add trait test for a specific failing case
	http://code.google.com/p/pharo/issues/detail?id=5731
	
Issue 5729:	remove #profile from InflateStream
	http://code.google.com/p/pharo/issues/detail?id=572'.
	self loadTogether: self script21 merge: false.
	self flushCaches.
