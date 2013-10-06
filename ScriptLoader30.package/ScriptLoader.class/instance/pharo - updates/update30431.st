update30431
	"self new update30431"
	Smalltalk tools remove: #syntaxError.
.
	self withUpdateLog: '11718 SyntaxError is a really bad name
	https://pharo.fogbugz.com/f/cases/11718'.
	self loadTogether: self script110 merge: false.
	SyntaxErrorDebugger registerToolsOn: Smalltalk tools.
.
	self flushCaches.
