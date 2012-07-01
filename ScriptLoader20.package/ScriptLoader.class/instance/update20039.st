pharo - updates
update20039
	"self new update20039"
	self withUpdateLog: 'Issue 5779:	remove testDuplicateInstanceVariableError
	http://code.google.com/p/pharo/issues/detail?id=5779
	
Issue 5767:	[BUG]: Nautilus has re-bound the explore shortcut
	http://code.google.com/p/pharo/issues/detail?id=5767
	
Issue 5768:	[ENH]: Nautilus - Debug test	
	http://code.google.com/p/pharo/issues/detail?id=5768
	
Issue 5724:	integrate Spotlight in Pharo 2.0
	http://code.google.com/p/pharo/issues/detail?id=5724'.
	self loadTogether: self script33 merge: false.
	self flushCaches.
