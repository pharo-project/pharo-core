update40372
	"self new update40372"
	self withUpdateLog: '14486 Debugging failing primitives crash spur images
	https://pharo.fogbugz.com/f/cases/14486

14485 InstructionStream scanner failing in spur.
	https://pharo.fogbugz.com/f/cases/14485'.
	self loadTogether: self script372 merge: false.
	self flushCaches.
