update50586
	"self new update50586"
	self withUpdateLog: '17604 Skip testNoOverlappingCodeEditorKeyBindings
	https://pharo.fogbugz.com/f/cases/17604'.
	self loadTogether: self script50586 merge: false.
	self flushCaches.
