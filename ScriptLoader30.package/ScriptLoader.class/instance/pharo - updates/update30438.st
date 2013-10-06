update30438
	"self new update30438"
	self withUpdateLog: '11641 #isLiteral should only be true for literal objects --> everyone else should use isLiteralNode or isLiteralToken
	https://pharo.fogbugz.com/f/cases/11641'.
	self loadTogether: self script117 merge: false.
	PluggableTextEditorMorph recompile.
	self flushCaches.
