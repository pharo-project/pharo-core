pharo - updates
update20283
	"self new update20283"
	RPackageOrganizer initialize.
	self withUpdateLog: 'Issue 6666:	RPackageSet missing methods
	http://code.google.com/p/pharo/issues/detail?can=2&q=6666
	
Issue 6662:	remove #packageInfo methods from MC
	http://code.google.com/p/pharo/issues/detail?id=6662
	
Issue 6623:	Just plain stupid automatic recategorization
	http://code.google.com/p/pharo/issues/detail?id=6623'.
	self loadTogether: self script270 merge: false.
	self flushCaches.
