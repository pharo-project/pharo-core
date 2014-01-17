update30703
	"self new update30703"
	self withUpdateLog: '12461 MultiByteBinaryOrTextStream cannot use TextConverters like MultiByteFileStream unless patched
	https://pharo.fogbugz.com/f/cases/12461

12488 Can not create newAnonymousSubclass of ByteLayout classes
	https://pharo.fogbugz.com/f/cases/12488

'.
	self loadTogether: self script356 merge: false.
	self flushCaches.
