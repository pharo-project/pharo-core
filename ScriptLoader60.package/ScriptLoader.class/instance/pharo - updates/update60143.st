update60143
	"self new update60143"
	self withUpdateLog: '18705 SistaV1 Bytecode: Opal tests down to  23 failures, 4 errors
	https://pharo.fogbugz.com/f/cases/18705

18709 Improvements in CustomHelp and ClassAPIHelpBuilder
	https://pharo.fogbugz.com/f/cases/18709

18714 can not rename a class
	https://pharo.fogbugz.com/f/cases/18714

18710 remove "currentScope" from RBParser
	https://pharo.fogbugz.com/f/cases/18710

18713 Load NeoUUIDGenerator without using it
	https://pharo.fogbugz.com/f/cases/18713'.
	self loadTogether: self script60143 merge: false.
	self flushCaches.
