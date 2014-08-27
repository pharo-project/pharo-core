update40190
	"self new update40190"
	self withUpdateLog: '13721 Failing test: RBRenameMethodTes>>#testRenameTestMethod1
	https://pharo.fogbugz.com/f/cases/13721

13631 Deprecate method refactoring
	https://pharo.fogbugz.com/f/cases/13631

13916 RBLiteralArrayNode uses #to:do: instead of #with:do: (Coding Idiom Violation)
	https://pharo.fogbugz.com/f/cases/13916

'.
	self loadTogether: self script190 merge: false.
	self flushCaches.
self cleanRepositories.
