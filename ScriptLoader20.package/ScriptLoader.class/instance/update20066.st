pharo - updates
update20066
	"self new update20066"
	self withUpdateLog: 'Issue 5860:	Package System-Download is empty and can be removed
	http://code.google.com/p/pharo/issues/detail?id=5860

Issue 5858:	DateAndTime >>#hash
	http://code.google.com/p/pharo/issues/detail?id=5858
	
Issue 5855:	During snapshot: Send cr after Transcript message
	http://code.google.com/p/pharo/issues/detail?id=5855
	
Issue 5853:	Pharo2.0a Latest update: #20064 One click brings debugger on Windows due to missing converter for stdout stream
	http://code.google.com/p/pharo/issues/detail?id=5853
	
Issue 5854:	FixSomeTests: Unreferences Global and Ftp
	http://code.google.com/p/pharo/issues/detail?id=5854'.
	self loadTogether: self script56 merge: false.
	ScriptLoader new unloadPackageNamed: 'System-Download'.
RPackageOrganizer default unregisterPackageNamed: 'System-Download'.
.
	self flushCaches.
