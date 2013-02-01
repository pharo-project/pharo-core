pharo - updates
update20370
	"self new update20370"
	self withUpdateLog: 'Issue 6710:	RPackage duplication of extensions
	http://code.google.com/p/pharo/issues/detail?id=6710
	
Issue 6888:	Remove HierarchyBrowser from ToolRegistry
	http://code.google.com/p/pharo/issues/detail?id=6888'.
	self loadTogether: self script352 merge: false.
	Smalltalk tools remove: #hierarchyBrowser.
RPackageOrganizer initialize.
.
	self flushCaches.
