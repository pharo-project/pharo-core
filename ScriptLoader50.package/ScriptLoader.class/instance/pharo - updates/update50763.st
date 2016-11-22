update50763
	"self new update50763"
	self withUpdateLog: '18918 Typo on welcome screen
	https://pharo.fogbugz.com/f/cases/18918'.
	self loadTogether: self script50763 merge: false.
	
(World windowsSatisfying: [ :window | 
	(window label = 'Welcome to Pharo 5.0')]) do: #close.
WelcomeHelp openForRelease.
	self flushCaches.
