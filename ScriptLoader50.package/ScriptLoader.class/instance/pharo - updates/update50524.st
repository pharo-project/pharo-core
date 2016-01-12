update50524
	"self new update50524"
	self withUpdateLog: '17341 Integrate  GTools version 3.6 using a postload
	https://pharo.fogbugz.com/f/cases/17341'.
	self loadTogether: self script50524 merge: false.
	
[ScriptLoader new loadConfiguration: 'GToolkitCore' version: '3.6'] on: Warning do: [:ex | ex resume:true].

#GTGenericStackDebugger asClass register.
#GTSUnitDebugger asClass register.
#GTBytecodeDebugger asClass register.
.
	self flushCaches.
