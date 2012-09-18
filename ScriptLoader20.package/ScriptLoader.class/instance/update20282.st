pharo - updates
update20282
	"self new update20282"
	[ScriptLoader new unregisterPackage: 'RPackage'] on: Error do: [].
PackageOrganizer default unregisterPackageNamed: 'RPackage'.
(RPackageSet named: 'RPackage') unregister.
.
	self withUpdateLog: ' Issue 6661:	remove Rpackage package from monticello
	http://code.google.com/p/pharo/issues/detail?id=6661
	
Issue 6666:	RPackageSet missing methods
	http://code.google.com/p/pharo/issues/detail?id=6666
'.
	self loadTogether: self script269 merge: false.
	self flushCaches.
