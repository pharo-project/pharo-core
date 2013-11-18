update30582
	"self new update30582"
	self withUpdateLog: '12192 Debugger/Inspector is broken because of display block
	https://pharo.fogbugz.com/f/cases/12192
	
'.
	self loadTogether: self script237 merge: false.
	self flushCaches.
