pharo - updates
update20069
	"self new update20069"
	self withUpdateLog: 'Issue 5865:	remove ChangeFileReader
	http://code.google.com/p/pharo/issues/detail?id=5865
	
Issue 5864:	remove empty packages Spec-Core-Old-Interpreters and Spec-Core-Interpreters
	http://code.google.com/p/pharo/issues/detail?id=5864
	
Issue 5863:	add Deprecated20 package
	http://code.google.com/p/pharo/issues/detail?id=5863'.
	self loadTogether: self script59 merge: false.
	RPackageOrganizer default unregisterPackageNamed: 'Spec-Core-Old-Interpreters'.
RPackageOrganizer default unregisterPackageNamed: 'Spec-Core-Interpreters'.
RPackageOrganizer default unregisterPackageNamed: 'Tests-SystemSupport'.
RPackageOrganizer default unregisterPackageNamed: 'Tests-Browser'.
ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
