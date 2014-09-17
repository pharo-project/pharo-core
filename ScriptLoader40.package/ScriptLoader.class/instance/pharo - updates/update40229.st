update40229
	"self new update40229"
	self withUpdateLog: '14029 Smart Suggestion Implementors does not work in Nautilus anymore
	https://pharo.fogbugz.com/f/cases/14029

14023 Nautlilus: Jump to test class should not only work on instance side
	https://pharo.fogbugz.com/f/cases/14023

14012 RGMetaclassDefinition and RGMetatraitDefinition DNU #category
	https://pharo.fogbugz.com/f/cases/14012

'.
	self loadTogether: self script229 merge: false.
	self flushCaches.
self cleanRepositories.
