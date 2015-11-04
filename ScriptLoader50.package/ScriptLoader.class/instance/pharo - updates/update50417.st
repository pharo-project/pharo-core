update50417
	"self new update50417"
	DangerousClassNotifier disable.
	self withUpdateLog: '16911 UTF8InvalidText should be subclass of Error instead of Exception
	https://pharo.fogbugz.com/f/cases/16911

16906 SmallInteger>>fromString:radix: purpose?
	https://pharo.fogbugz.com/f/cases/16906

16902 Improve Array comment
	https://pharo.fogbugz.com/f/cases/16902

16905 Remove activeOnlyOnTop Ivar from SystemWindow
	https://pharo.fogbugz.com/f/cases/16905

'.
	self loadTogether: self script50417 merge: false.
	DangerousClassNotifier enable.
	self flushCaches.
self cleanRepositories.
