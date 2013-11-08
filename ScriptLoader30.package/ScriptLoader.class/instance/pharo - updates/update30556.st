update30556
	"self new update30556"
	self withUpdateLog: '11920 NewValueHolder should use value instead of contents
	https://pharo.fogbugz.com/f/cases/11920
	
12110 MNU: ToolRegistry>>shortcuts	
	https://pharo.fogbugz.com/f/cases/12110'.
	self loadTogether: self script212 merge: false.
	KMShortcutHandler registerToolsOn: Smalltalk tools.
	self flushCaches.
