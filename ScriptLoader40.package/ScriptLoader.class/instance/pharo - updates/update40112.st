update40112
	"self new update40112"
	self withUpdateLog: '13568 Better error message when using "-" prefix
	https://pharo.fogbugz.com/f/cases/13568

13632 MetaLinks for Globals
	https://pharo.fogbugz.com/f/cases/13632

13633 Some repacking of Network: NetworkSystemSettings and RFC822
	https://pharo.fogbugz.com/f/cases/13633

13634 remove empty package PackageInfo
	https://pharo.fogbugz.com/f/cases/13634'.
	self loadTogether: self script112 merge: false.
	ScriptLoader new deletePackage: 'PackageInfo'.
	self flushCaches.
self cleanRepositories.
