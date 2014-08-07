update40154
	"self new update40154"
	self withUpdateLog: '13777 remove empty package Settings-Monticello
	https://pharo.fogbugz.com/f/cases/13777

13780 Wrong compilation context in mustBeBooleanInMagic:
	https://pharo.fogbugz.com/f/cases/13780

13762 OCInstanceVariable not needed
	https://pharo.fogbugz.com/f/cases/13762

13788 Unused method in StringMorph
	https://pharo.fogbugz.com/f/cases/13788

13776 EyeSyntaxTreeInspector
	https://pharo.fogbugz.com/f/cases/13776

13759 Small Code critique pass over 3 tools packages 
	https://pharo.fogbugz.com/f/cases/13759

13760 Continue remvoving RGFactory
	https://pharo.fogbugz.com/f/cases/13760

'.
	self loadTogether: self script154 merge: false.
	ScriptLoader new deletePackage:  'Settings-Monticello'.
	self flushCaches.
self cleanRepositories.
