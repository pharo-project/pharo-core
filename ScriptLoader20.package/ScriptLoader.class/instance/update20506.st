pharo - updates
update20506
	"self new update20506"
	self withUpdateLog: 'Issue 7353:	Problem with PickList
	http://code.google.com/p/pharo/issues/detail?id=7353
	
Issue 7270:	Failing test for RPackageCategorySynchronisationTest
	http://code.google.com/p/pharo/issues/detail?id=7270
	
Issue 7399:	cleanup uses of Compiler a little
	http://code.google.com/p/pharo/issues/detail?id=7399'.
	self loadTogether: self script484 merge: false.
	self flushCaches.
