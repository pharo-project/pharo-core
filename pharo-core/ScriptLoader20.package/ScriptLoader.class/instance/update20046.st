pharo - updates
update20046
	"self new update20046"
	ScriptLoader new addHomeRepositoryToAllPackages.
	self withUpdateLog: 'Issue 5789:	Merge ExpandedSourceFileArray into SourceFileArray (part1 copy methods)
	http://code.google.com/p/pharo/issues/detail?id=5789
	
Issue 5804:	Failing Test:testCommandLineHandlerCondition
	http://code.google.com/p/pharo/issues/detail?id=5804
	
	
Issue 5795:	Merge System-BreakPoints with Tools-Debugger
	http://code.google.com/p/pharo/issues/detail?id=5795'.
	self loadTogether: self script38 merge: false.
	self flushCaches.
