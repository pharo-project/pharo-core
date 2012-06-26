pharo - updates
update20094
	"self new update20094"
	self withUpdateLog: 'Issue 5959:	Failing test: SpecInterpreterTest>>testBuildWindowFor
	http://code.google.com/p/pharo/issues/detail?id=5959
	
Issue 5966:	DropListMorph do not pop the list when the text field is clicked
	http://code.google.com/p/pharo/issues/detail?id=5966'.
	self loadTogether: self script83 merge: false.
	self flushCaches.
