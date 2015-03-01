update40522
	"self new update40522"
	self withUpdateLog: '15019 Compiler AST transformation Plugins
	https://pharo.fogbugz.com/f/cases/15019

15026 Link installation infrastructure for the AST
	https://pharo.fogbugz.com/f/cases/15026'.
	self loadTogether: self script522 merge: false.
	
ASTTransformExamplePluginActive recompile.
	self flushCaches.
