pharo - updates
update20385
	"self new update20385"
	self withUpdateLog: 'Issue 6936:	Compiler tests dependent on TextMorph
	http://code.google.com/p/pharo/issues/detail?id=6936
	
Issue 6935:	CompilerEvaluationTest dependent on Debugger
	http://code.google.com/p/pharo/issues/detail?id=6935
	
Issue 6934:	move encodeForHTTP tests to own class
	http://code.google.com/p/pharo/issues/detail?id=6934
	
Issue 6918:	Right click on packages over a category without MC corresponding package raises DNU
	http://code.google.com/p/pharo/issues/detail?id=6918'.
	self loadTogether: self script365 merge: false.
	self flushCaches.
