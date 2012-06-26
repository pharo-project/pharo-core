pharo - updates
update20093
	"self new update20093"
	self withUpdateLog: 'Issue 5963:	remove empty package PluggableTextMorphWithLimits
	http://code.google.com/p/pharo/issues/detail?id=5963

Issue 5960:	Failing tests: SourceFileArrayTest
	http://code.google.com/p/pharo/issues/detail?id=5960'.
	self loadTogether: self script82 merge: false.
	ScriptLoader new unloadPackageNamed: 'PluggableTextMorphWithLimits'.
RPackageOrganizer default unregisterPackageNamed: 'PluggableTextMorphWithLimits'.
	self flushCaches.
