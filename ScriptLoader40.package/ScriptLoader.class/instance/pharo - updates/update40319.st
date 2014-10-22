update40319
	"self new update40319"
	self withUpdateLog: '14284 fix #sourceNode for Blocks
	https://pharo.fogbugz.com/f/cases/14284

14282 add SourceNode tab for IRInstruction and SymbolicBytecode
	https://pharo.fogbugz.com/f/cases/14282'.
	self loadTogether: self script319 merge: false.
	self flushCaches.
