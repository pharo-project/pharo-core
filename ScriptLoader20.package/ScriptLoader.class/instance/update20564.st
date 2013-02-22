pharo - updates
update20564
	"self new update20564"
	self withUpdateLog: 'Issue 7571:	Zinc Update Februari 2013
	http://code.google.com/p/pharo/issues/detail?id=7571

Issue 7570:	Nautilus: rename package -- Cannot remove empty category
	http://code.google.com/p/pharo/issues/detail?id=7570

Issue 7554:	Rename in Nautilus is actually a refactoring and is missing from the refactoring menu
	http://code.google.com/p/pharo/issues/detail?id=7554

Issue 7552:	Failing test: #testObsoleteBehaviors
	http://code.google.com/p/pharo/issues/detail?id=7552
'.
	self loadTogether: self script539 merge: false.
	self flushCaches.
