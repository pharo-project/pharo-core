pharo - updates
update20015
	"self new update20015"
	self withUpdateLog: 'Issue 5691:	all sender of #getSourceFor:in: can just use #sourceCode
	http://code.google.com/p/pharo/issues/detail?id=5691
	
Issue 5651:	Fix for Classbuilder (subclasses of CompiledMethod)
	http://code.google.com/p/pharo/issues/detail?id=5651
	
Issue 5690:	CompiledMethod #sourceClass and #sourceSelector
	http://code.google.com/p/pharo/issues/detail?id=5690'.
	self loadTogether: self script9 merge: false.
	self flushCaches.
