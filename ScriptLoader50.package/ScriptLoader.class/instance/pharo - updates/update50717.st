update50717
	"self new update50717"
	self withUpdateLog: '18088 Update GTInspector 3.10
	https://pharo.fogbugz.com/f/cases/18088

17618 Failing test: ReleaseTest>>#testInstalledMethodsWithIncorrectTrailerKind
	https://pharo.fogbugz.com/f/cases/17618'.
	self loadTogether: self script50717 merge: false.
	self loadConfiguration: 'GTInspectorCore' version: '3.10'.self flushCaches.
