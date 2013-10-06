update30440
	"self new update30440"
	self withUpdateLog: '11734 Clean up the Object>>#veryDeepCopyWith:
	https://pharo.fogbugz.com/f/cases/11734
	
11735 Addressing GreekEnvironment undeclared in MiniImage
	https://pharo.fogbugz.com/f/cases/11735
'.
	self loadTogether: self script119 merge: false.
	self flushCaches.
