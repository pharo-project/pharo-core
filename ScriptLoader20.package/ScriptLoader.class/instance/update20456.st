pharo - updates
update20456
	"self new update20456"
	self withUpdateLog: 'Issue 7029:	delete empty packages Graphics-Support and Graphics-Text
	http://code.google.com/p/pharo/issues/detail?id=7029'.
	self loadTogether: self script434 merge: false.
	ScriptLoader new deletePackage: 'Graphics-Support'.
ScriptLoader new deletePackage: 'Graphics-Text'.
	self flushCaches.
