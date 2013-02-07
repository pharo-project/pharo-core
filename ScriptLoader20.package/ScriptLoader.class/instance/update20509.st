pharo - updates
update20509
	"self new update20509"
	self withUpdateLog: 'Issue 7390:	FileDialogWindow answers wrong FileReference for selected file
	http://code.google.com/p/pharo/issues/detail?id=7390

Issue 7339:	Failing test: RPackageSetTest.testPolymorphicWithPackageInfo
	http://code.google.com/p/pharo/issues/detail?id=7339'.
	self loadTogether: self script487 merge: false.
	FileServices initialize.
.
	self flushCaches.
