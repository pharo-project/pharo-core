pharo - updates
update20059
	"self new update20059"
	self withUpdateLog: 'Issue 5836:	RPackage reference to MessageSet
	http://code.google.com/p/pharo/issues/detail?id=5836
	
Issue 5827:	remove #directoryUrl
	http://code.google.com/p/pharo/issues/detail?id=5827
	
Issue 5834:	New MessageList does not show category for implementors
	http://code.google.com/p/pharo/issues/detail?id=5834'.
	self loadTogether: self script49 merge: false.
	((RPackageOrganizer default packageNamed: #Shout) instVarNamed: 'classExtensionSelectors') removeKey: #MessageSet.
((RPackageOrganizer default packageNamed: #'Shout-Styling') instVarNamed: 'classExtensionSelectors') removeKey: #MessageSet.
.
	self flushCaches.
