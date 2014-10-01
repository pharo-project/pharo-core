update40276
	"self new update40276"
	self withUpdateLog: '14128 "Print it" from Playground menu does not work
	https://pharo.fogbugz.com/f/cases/14128

14117 merge menuSpec and menuItemSpec
	https://pharo.fogbugz.com/f/cases/14117

14113 WorldSate stepList not properly cleaned when a morph is deleted
	https://pharo.fogbugz.com/f/cases/14113

13641 Merge Package Key into package System-Platforms
	https://pharo.fogbugz.com/f/cases/13641

14099 SmalllintManifestChecker duplicates RBSmalllintChecker>>#run
	https://pharo.fogbugz.com/f/cases/14099'.
	self loadTogether: self script276 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.3'.
ScriptLoader new deletePackage: 'Keys'.
	self flushCaches.
