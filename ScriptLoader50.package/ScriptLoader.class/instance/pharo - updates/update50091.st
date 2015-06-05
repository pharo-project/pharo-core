update50091
	"self new update50091"
	
Smalltalk removeFromShutDownList: FT2Handle.
	self withUpdateLog: '15700 rollback latest font changes, until we have a real solution
	https://pharo.fogbugz.com/f/cases/15700

15686 add missing editor shortcuts to class PharoShortcuts
	https://pharo.fogbugz.com/f/cases/15686

15698 do not load package from cache if version info differs
	https://pharo.fogbugz.com/f/cases/15698'.
	self loadTogether: self script50091 merge: false.
	self flushCaches.
