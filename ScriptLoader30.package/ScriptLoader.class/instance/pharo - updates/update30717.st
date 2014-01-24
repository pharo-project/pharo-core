update30717
	"self new update30717"
	self withUpdateLog: '12684 NewValueHolder Enhancements
	https://pharo.fogbugz.com/f/cases/12684

'.
	self loadTogether: self script370 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.
