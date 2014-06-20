update40026
	"self new update40026"
	self withUpdateLog: '11987 Launching ProfStef should now require initials
	https://pharo.fogbugz.com/f/cases/11987

12579  SyntaxErrorNotification>>messageText
	https://pharo.fogbugz.com/f/cases/12579

'.
	self loadTogether: self script26 merge: false.
	self flushCaches.
