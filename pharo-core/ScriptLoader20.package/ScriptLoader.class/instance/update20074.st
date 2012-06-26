pharo - updates
update20074
	"self new update20074"
	self withUpdateLog: 'Issue 5890:	CodeImport package must be in the Pharo Kernel
	http://code.google.com/p/pharo/issues/detail?id=5890
	
Issue 5888:	MCPackageManager should be a subclass of Model	
	http://code.google.com/p/pharo/issues/detail?id=5888
	
Issue 5883:	Cleaning Event Handler and Polygon
	http://code.google.com/p/pharo/issues/detail?id=5883
	
Issue 5680:	NautilusBreadcrumbsPlugin support for cnd + click and even right click?
	http://code.google.com/p/pharo/issues/detail?id=5680'.
	self loadTogether: self script64 merge: false.
	self flushCaches.
