pharo - updates
update20429
	"self new update20429"
	self withUpdateLog: 'Issue 7101:	Opening SmartCharacter in a faulty code section causes error
	http://code.google.com/p/pharo/issues/detail?id=7101
	
Issue 7099:	Integration of NewList in 2.0
	http://code.google.com/p/pharo/issues/detail?id=7099
	
Issue 7098:	S***** word in the Pharo image
	http://code.google.com/p/pharo/issues/detail?id=7098
	
Issue 7100:	Missing Class Comments on CommandLineHandlers
	http://code.google.com/p/pharo/issues/detail?id=7100'.
	self loadTogether: self script408 merge: false.
	self flushCaches.
