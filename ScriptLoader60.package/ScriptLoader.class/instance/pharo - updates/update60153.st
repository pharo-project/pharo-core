update60153
	"self new update60153"
	self withUpdateLog: '18734 Two tests failing in FFIExternalStructureTests
	https://pharo.fogbugz.com/f/cases/18734'.
	self loadTogether: self script60153 merge: false.
	self flushCaches.
