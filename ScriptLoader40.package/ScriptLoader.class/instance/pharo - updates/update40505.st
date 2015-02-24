update40505
	"self new update40505"
	CompiledMethod addClassVarNamed: #PrimaryBytecodeSetEncoderClass.
CompiledMethod addClassVarNamed: #SecondaryBytecodeSetEncoderClass.

CompiledMethod classVarNamed: #PrimaryBytecodeSetEncoderClass put: EncoderForV3PlusClosures.
CompiledMethod classVarNamed: #SecondaryBytecodeSetEncoderClass put: EncoderForSistaV1.
	self withUpdateLog: '14980 Method missing to decode bytecode set
	https://pharo.fogbugz.com/f/cases/14980

14979 Fixes for SistaV1 bytecode set
	https://pharo.fogbugz.com/f/cases/14979

'.
	self loadTogether: self script505 merge: false.
	self flushCaches.
self cleanRepositories.
