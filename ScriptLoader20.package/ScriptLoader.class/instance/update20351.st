pharo - updates
update20351
	"self new update20351"
	self withUpdateLog: 'Issue 6846:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=6846
	
Issue 6845:	Monticello browser should not open the repository after an add when a package is selected
	http://code.google.com/p/pharo/issues/detail?id=6845
	
Issue 6842:	Nautilus: Group could work as scoped enviroment
	http://code.google.com/p/pharo/issues/detail?id=6842
	
Issue 6805:	unify #isTraitMethod and #isFromTrait
	http://code.google.com/p/pharo/issues/detail?id=6805'.
	self loadTogether: self script333 merge: false.
	self flushCaches.
