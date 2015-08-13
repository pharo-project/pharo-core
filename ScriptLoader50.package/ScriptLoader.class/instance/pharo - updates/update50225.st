update50225
	"self new update50225"
	self withUpdateLog: '16167 remove useless methods
	https://pharo.fogbugz.com/f/cases/16167

16170 Add Manifests for the bootstrap (part 1)
	https://pharo.fogbugz.com/f/cases/16170

16172 Kernel and Ring should not depend on Nautilus
	https://pharo.fogbugz.com/f/cases/16172'.
	self loadTogether: self script50225 merge: false.
	self flushCaches.
