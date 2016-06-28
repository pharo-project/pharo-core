update60124
	"self new update60124"
	self withUpdateLog: '18619 Introduction of FullBlockClosure (4) moving code from CompiledMethod to CompiledCode
	https://pharo.fogbugz.com/f/cases/18619

18633 InstructionForPC: not working with new bytecode set
	https://pharo.fogbugz.com/f/cases/18633'.
	self loadTogether: self script60124 merge: false.
	self flushCaches.
