pharo - updates
update20533
	"self new update20533"
	self withUpdateLog: 'Issue 7476:	eval command line handler uses cr instead of lf
	http://code.google.com/p/pharo/issues/detail?id=7476
	
Issue 7474:	Make ReleaseTest error messages more readable
	http://code.google.com/p/pharo/issues/detail?id=7474
	
Issue 7472:	Improve CommandLine TestRunner stability
	http://code.google.com/p/pharo/issues/detail?id=7472'.
	self loadTogether: self script510 merge: false.
	self flushCaches.
