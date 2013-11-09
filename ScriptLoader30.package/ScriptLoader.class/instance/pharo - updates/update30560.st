update30560
	"self new update30560"
	self withUpdateLog: '12084 Move UITheme deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/12084
	
12123 FileSystem.Tests.Core.PlatformResolverTest.testCache fails under Mac
	https://pharo.fogbugz.com/f/cases/12123
	
12122 Failing RGTraitDefinitionTest
	https://pharo.fogbugz.com/f/cases/12122
	
12118 Inspector keeps wrong view when diving
	https://pharo.fogbugz.com/f/cases/12118
'.
	self loadTogether: self script216 merge: false.
	self flushCaches.
