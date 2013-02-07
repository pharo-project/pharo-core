pharo - updates
update20512
	"self new update20512"
	self withUpdateLog: 'Issue 7361:	endless Cancel in discard What do you want to do?
	http://code.google.com/p/pharo/issues/detail?id=7361
	
	
Issue 7416:	#compilerClass on behaviors should return Smalltalk>>#compilerClass
	http://code.google.com/p/pharo/issues/detail?id=7416'.
	self loadTogether: self script490 merge: false.
	self flushCaches.
