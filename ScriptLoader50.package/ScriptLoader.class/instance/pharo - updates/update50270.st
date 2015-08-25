update50270
	"self new update50270"
	self withUpdateLog: '16367 #hasLiteralThorough: should not check for names of Binding
	https://pharo.fogbugz.com/f/cases/16367

16189  System-Sources has low-level dependents
	https://pharo.fogbugz.com/f/cases/16189

16375 More tests for instead links
	https://pharo.fogbugz.com/f/cases/16375

'.
	self loadTogether: self script50270 merge: false.
	self flushCaches.
self cleanRepositories.
