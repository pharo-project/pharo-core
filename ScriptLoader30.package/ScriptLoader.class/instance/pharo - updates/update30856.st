update30856
	"self new update30856"
	self withUpdateLog: '13912 backport: 13911: Metacello test packages not properly unload
	https://pharo.fogbugz.com/f/cases/13912

13725 NativeBoost crashes when reading null pointer field in a structure
	https://pharo.fogbugz.com/f/cases/13725

'.
	self loadTogether: self script118 merge: false.
	self flushCaches.
