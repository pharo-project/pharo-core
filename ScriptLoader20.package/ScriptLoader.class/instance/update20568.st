pharo - updates
update20568
	"self new update20568"
	self withUpdateLog: 'Issue 7584:	[BUG]: attribute 1008 is only for JIT VMs (Part 1)
	http://code.google.com/p/pharo/issues/detail?id=7584
	
Issue 7527:	SystemOrganization fileOut adds .st twice to the filename
	http://code.google.com/p/pharo/issues/detail?id=7527
	
Issue 6773:	ChangesBrowser should be 100% Keyboard navigatable
	http://code.google.com/p/pharo/issues/detail?id=6773

Issue 7561:	Debugger step over #halt opens second Debugger
	http://code.google.com/p/pharo/issues/detail?id=7561'.
	self loadTogether: self script543 merge: false.
	self flushCaches.
