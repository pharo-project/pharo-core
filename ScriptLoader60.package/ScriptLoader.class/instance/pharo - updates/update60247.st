update60247
	"self new update60247"
	self withUpdateLog: '19131 Deprecation: The method Object>>name called from ChangeSet>>#changeRecorderFor: has been deprecated.
	https://pharo.fogbugz.com/f/cases/19131

18979 Ignore some kernel and Network-UUID dependencies for the bootstrap
	https://pharo.fogbugz.com/f/cases/18979

19165 Integrate Epicea 8.0.3
	https://pharo.fogbugz.com/f/cases/19165'.
	self loadTogether: self script60247 merge: false.
	self loadConfiguration: 'Epicea' version: '8.0.3'.self flushCaches.
