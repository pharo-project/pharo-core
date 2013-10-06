update30448
	"self new update30448"
	self withUpdateLog: '11740 Remove Morphic dependency from Spec
	https://pharo.fogbugz.com/f/cases/11740
	'.
	self loadTogether: self script103 merge: false.
	SpecInterpreter hardResetBindings.
	self flushCaches.
