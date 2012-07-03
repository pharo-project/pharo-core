pharo - updates
update20178
	"self new update20178"
	self withUpdateLog: 'Issue 6237:	compiling protocol in TPureBehavior should be *Compiler-Kernel
	http://code.google.com/p/pharo/issues/detail?id=6237
	
Issue 6211:	MCWorkingCopyTest failing
	http://code.google.com/p/pharo/issues/detail?id=6211
	
Issue 6230:	Refactoring engine depending on SystemChangeNotifier
	http://code.google.com/p/pharo/issues/detail?id=6230
	
Issue 6005:	BlockClosure>>silentlyValue 
	http://code.google.com/p/pharo/issues/detail?id=6005'.
	self loadTogether: self script168 merge: false.
	RBRefactoryChangeManager nuke.
RBRefactoryChangeManager instance.
	self flushCaches.
