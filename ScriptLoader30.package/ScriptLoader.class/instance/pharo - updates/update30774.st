update30774
	"self new update30774"
	self withUpdateLog: '12290 Newly loaded SLICE does not have PharoInbox in the repository group
	https://pharo.fogbugz.com/f/cases/12290

12865 Class comments missing in Manifest package
	https://pharo.fogbugz.com/f/cases/12865

12898 When creating a subclass -that includes a Trait- with a VariableLayout it uses a ByteLayout instead
	https://pharo.fogbugz.com/f/cases/12898

12934 Class comments missing in RecentSubmissions package
	https://pharo.fogbugz.com/f/cases/12934

'.
	self loadTogether: self script427 merge: false.
	self flushCaches.
