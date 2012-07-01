pharo - updates
update20077
	"self new update20077"
	self withUpdateLog: 'Issue 5922	Fixing Version browser
	http://code.google.com/p/pharo/issues/detail?id=5922

Issue 5918:	Commenting and cleaning Spec
	http://code.google.com/p/pharo/issues/detail?id=5918'.
	self loadTogether: self script66 merge: false.
	self flushCaches.
