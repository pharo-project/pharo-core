update60193
	"self new update60193"
	self withUpdateLog: '18980 QA v3.2.5
	https://pharo.fogbugz.com/f/cases/18980

18903 CriticBrowser browser senders broken
	https://pharo.fogbugz.com/f/cases/18903

18970 Add missing class comments for some RBToken classes
	https://pharo.fogbugz.com/f/cases/18970'.
	self loadTogether: self script60193 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.5'.self flushCaches.
