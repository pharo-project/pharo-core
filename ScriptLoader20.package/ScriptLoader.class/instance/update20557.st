pharo - updates
update20557
	"self new update20557"
	TPureBehavior classTrait users remove: SystemNavigation default obsoleteBehaviors second.
3 timesRepeat: [ Smalltalk garbageCollect ].
.
	self withUpdateLog: 'Issue 7530:	obsolete Behavior in image
	http://code.google.com/p/pharo/issues/detail?id=7530
	
Issue 7458:	Changing method in debugger (in a block activation) changes CompiledMethod but not source code
	http://code.google.com/p/pharo/issues/detail?id=7458
	
Issue 7110:	Fix Refresh of ProgressBar
	http://code.google.com/p/pharo/issues/detail?id=7110
	
Issue 7085:	UTC seconds conversion inconsistent
	http://code.google.com/p/pharo/issues/detail?id=7085'.
	self loadTogether: self script532 merge: false.
	self flushCaches.
