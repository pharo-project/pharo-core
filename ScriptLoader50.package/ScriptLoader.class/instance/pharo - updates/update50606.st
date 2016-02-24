update50606
	"self new update50606"
	self withUpdateLog: '16893 Update STON
	https://pharo.fogbugz.com/f/cases/16893'.
	self loadTogether: self script50606 merge: false.
	
ScriptLoader new loadConfiguration: 'Ston' version: '0.17'.
	self flushCaches.
