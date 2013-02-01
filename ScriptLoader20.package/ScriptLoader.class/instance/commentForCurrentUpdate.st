public
commentForCurrentUpdate
 ^ 'Issue 6890:	new changesorters should be registered in ToolRegistery
	http://code.google.com/p/pharo/issues/detail?id=6890
	
Issue 6889:	Remove old classListBrowser
	http://code.google.com/p/pharo/issues/detail?id=6889
	
ChangeSorterApplication registerToolsOn: Smalltalk tools.
DualChangeSorterApplication registerToolsOn: Smalltalk tools.
Smalltalk tools remove: #classListBrowser.'