update40083
	"self new update40083"
	self withUpdateLog: '13527 Moving class with overridden method and green override icon gives MNU "methodClass" is nil when clicked
	https://pharo.fogbugz.com/f/cases/13527

13542 Better #printOn: method for RPackageTag
	https://pharo.fogbugz.com/f/cases/13542

13543 use UserManager default instead of Smalltalk tools userManager
	https://pharo.fogbugz.com/f/cases/13543

'.
	self loadTogether: self script83 merge: false.
	self flushCaches.
self cleanRepositories.
