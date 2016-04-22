update50707
	"self new update50707"
	self withUpdateLog: '17618 Failing test: ReleaseTest>>#testInstalledMethodsWithIncorrectTrailerKind
	https://pharo.fogbugz.com/f/cases/17618

18060 broken context menu in the Spotter text edit box
	https://pharo.fogbugz.com/f/cases/18060'.
	self loadTogether: self script50707 merge: false.
	self loadConfiguration: 'Rubric' version: '2.19.2'.self flushCaches.
