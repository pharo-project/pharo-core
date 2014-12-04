update40399
	"self new update40399"
	self withUpdateLog: '14570 OCBytecodeGeneratorTest using hardcoded bytecode generator
	https://pharo.fogbugz.com/f/cases/14570'.
	self loadTogether: self script399 merge: false.
	self flushCaches.
