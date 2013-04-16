pharo - updates
update20598
	"self new update20598"
	self withUpdateLog: '10260 backport 2.0: 10258 DivideByZero in SystemProgressMorph
	https://pharo.fogbugz.com/f/cases/10260
	
10109 MNU : SmalltalkEditor>>browseItHere:	
	https://pharo.fogbugz.com/f/cases/10109
	
	
'.
	self loadTogether: self script572 merge: false.
	TextEditor initialize.
SmalltalkEditor initialize.
	self flushCaches.
