update60022
	"self new update60022"
	self withUpdateLog: '18274 improve testing of UUID and remove createStringStartingAt:for:
	https://pharo.fogbugz.com/f/cases/18274

18132 BlockClosure>>bench prints time instead of frequency when it runs for more than benchtime
	https://pharo.fogbugz.com/f/cases/18132

18192 InputEventFetcher class>>#deinstall uses deprecated startup API
	https://pharo.fogbugz.com/f/cases/18192

18268 Add Class comments to Refactoring-Core-Conditions classes
	https://pharo.fogbugz.com/f/cases/18268'.
	self loadTogether: self script60022 merge: false.
	self flushCaches.
