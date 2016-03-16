update50647
	"self new update50647"
	self withUpdateLog: '16508 Nautilus loses track of changes when using the debugger (restart)
	https://pharo.fogbugz.com/f/cases/16508

17828 failing test: testMetaclassAndTraitClassRespectsPolymorphismRules
	https://pharo.fogbugz.com/f/cases/17828'.
	self loadTogether: self script50647 merge: false.
	self flushCaches.
