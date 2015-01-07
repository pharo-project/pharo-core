update40432
	"self new update40432"
	self withUpdateLog: '14638 Avoid indirectly invoking the Refactoring Engine parser (thru CompiledMethod>>ast) when installing a method from an used trait
	https://pharo.fogbugz.com/f/cases/14638'.
	self loadTogether: self script432 merge: false.
	self flushCaches.
