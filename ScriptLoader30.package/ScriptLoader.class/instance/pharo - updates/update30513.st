update30513
	"self new update30513"
	self withUpdateLog: '11965 Remove RPackageSetTest
	https://pharo.fogbugz.com/f/cases/11965
	
11966 failing tests testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits and testBehaviorRespectsPolymorphismWithTraitBehavior
	https://pharo.fogbugz.com/f/cases/11966
	
11967 failing test: testUnknownProcesses
	https://pharo.fogbugz.com/f/cases/11967
'.
	self loadTogether: self script168 merge: false.
	(ReleaseTest actualProcesses difference: ReleaseTest knownProcesses) do: [ :each | each suspend; terminate ].
.
	self flushCaches.
