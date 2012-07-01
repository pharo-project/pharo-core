pharo - updates
update20109
	"self new update20109"
	self withUpdateLog: ' Issue 6021:	less hardcoded RPackage and RPackageOrganizer
		http://code.google.com/p/pharo/issues/detail?id=6021
	'.
	self loadTogether: self script99 merge: false.
	self flushCaches.
