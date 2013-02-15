pharo - updates
update20548
	"self new update20548"
	self withUpdateLog: 'Issue 7512:	Nautilus Class side Checkbox>>mouseUpBalk
	http://code.google.com/p/pharo/issues/detail?id=7512
	
Issue 7501:	Monkey needs to run *ALL* tests
	http://code.google.com/p/pharo/issues/detail?id=7501
	
Issue 7109:	Nautilus: still some menues with lowercase menu items left
	http://code.google.com/p/pharo/issues/detail?id=7109'.
	self loadTogether: self script523 merge: false.
	self flushCaches.
