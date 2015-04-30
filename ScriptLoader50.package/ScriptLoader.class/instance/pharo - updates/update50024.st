update50024
	"self new update50024"
	self withUpdateLog: '15430 Integrate new versionner 
	https://pharo.fogbugz.com/f/cases/15430'.
	self loadTogether: self script633 merge: false.
	self loadConfiguration: 'Versionner' version: '2.12.2'.self flushCaches.
