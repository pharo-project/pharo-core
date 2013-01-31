pharo - updates
update20362
	"self new update20362"
	self withUpdateLog: 'Issue 6707:	Tests failing ZipArchiveTest
	http://code.google.com/p/pharo/issues/detail?id=6707
	
Issue 6874:	Group option For ConfigurationCommandLineHandler
	http://code.google.com/p/pharo/issues/detail?id=6874
	
Issue 6873:	Improve UnpackagedPackages Test
	http://code.google.com/p/pharo/issues/detail?id=6873
	
Issue 6871:	remove BytecodeAgnosticMethodNode
	http://code.google.com/p/pharo/issues/detail?id=6871
	'.
	self loadTogether: self script344 merge: false.
	self flushCaches.
