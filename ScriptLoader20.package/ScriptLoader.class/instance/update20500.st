pharo - updates
update20500
	"self new update20500"
	self withUpdateLog: 'Issue 7360:	Tests for FillStyle
	http://code.google.com/p/pharo/issues/detail?id=7360
	
Issue 7197:	Not running RBSpellCheckerTest?
	http://code.google.com/p/pharo/issues/detail?id=7197
	
Issue 7340:	Failing test: ClassHierarchyTest>>testSubclasses
	http://code.google.com/p/pharo/issues/detail?id=7340

Issue 7126:	RBParser can not parse the whole image...
	http://code.google.com/p/pharo/issues/detail?id=7126'.
	self loadTogether: self script478 merge: false.
	ScriptLoader new unloadPackageNamed: 'Refactoring-Tests-Spelling'.
	self flushCaches.
