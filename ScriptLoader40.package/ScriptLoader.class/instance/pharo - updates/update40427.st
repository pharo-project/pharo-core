update40427
	"self new update40427"
	self withUpdateLog: '14643 find records for classcomment changes in SourceFileArray
	https://pharo.fogbugz.com/f/cases/14643

10529 ToolRegistry need to support multiple registrations per tool 
	https://pharo.fogbugz.com/f/cases/10529'.
	self loadTogether: self script427 merge: false.
	
Smalltalk resetTools.
	self flushCaches.
