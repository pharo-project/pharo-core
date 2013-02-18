pharo - updates
update20553
	"self new update20553"
	self withUpdateLog: 'Issue 7504:	Creating a new class does not mark the package as Dirty
	http://code.google.com/p/pharo/issues/detail?id=7504
	
Issue 7480:	[Cleanup]: #giveFocusToXyzFrom: arg name
	http://code.google.com/p/pharo/issues/detail?id=7480'.
	self loadTogether: self script528 merge: false.
	MCWorkingCopy registerForNotifications.
	self flushCaches.
