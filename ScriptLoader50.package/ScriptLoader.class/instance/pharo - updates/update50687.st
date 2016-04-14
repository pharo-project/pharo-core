update50687
	"self new update50687"
	self withUpdateLog: '17984 Method pane of Nautilus does not honor test methods of abstract unit test classes (and lets them run instead)
	https://pharo.fogbugz.com/f/cases/17984

17970 String Utility method "repeat:"
	https://pharo.fogbugz.com/f/cases/17970'.
	self loadTogether: self script50687 merge: false.
	
MethodWidget resetMethodIconCache .
	self flushCaches.
