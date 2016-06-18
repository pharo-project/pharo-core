update60094
	"self new update60094"
	self withUpdateLog: '18517 ConfigurationOfVersionner needs update to be in sync with Pharo
	https://pharo.fogbugz.com/f/cases/18517

18522 Add icon styler for "self halt"
	https://pharo.fogbugz.com/f/cases/18522

18518 ConfigurationOfCatalog needs update to be in sync with Pharo
	https://pharo.fogbugz.com/f/cases/18518

18513 NEC fails to guess the type of non-class bindings
	https://pharo.fogbugz.com/f/cases/18513

18521 Add manifest for Random-Core
	https://pharo.fogbugz.com/f/cases/18521'.
	self loadTogether: self script60094 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.16'.
self loadConfiguration: 'Catalog' version: '0.16'.
ReRuleManager reset.
	self flushCaches.
