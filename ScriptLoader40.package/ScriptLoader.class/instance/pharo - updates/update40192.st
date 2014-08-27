update40192
	"self new update40192"
	self withUpdateLog: '13153 Comment of FreeTypeProvider refers to FileDirectory and it should not
	https://pharo.fogbugz.com/f/cases/13153

13726 Forward port Pharo4: 13725 NativeBoost crashes when reading null pointer field in a structure
	https://pharo.fogbugz.com/f/cases/13726

13390 Support NB options with non-boolean values
	https://pharo.fogbugz.com/f/cases/13390


'.
	self loadTogether: self script192 merge: false.
	self flushCaches.
self cleanRepositories.
