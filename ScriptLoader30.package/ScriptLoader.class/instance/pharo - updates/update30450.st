update30450
	"self new update30450"
	self withUpdateLog: '11759 Protocol names should be Symbols
	https://pharo.fogbugz.com/f/cases/11759'.
	self loadTogether: self script105 merge: false.
	Protocol allInstancesDo: [ :each | each name: each name asSymbol ].
PluggableTextEditorMorph recompile.
	self flushCaches.
