update30745
	"self new update30745"
	self withUpdateLog: '12813 Class comments missing in Gofer package
	https://pharo.fogbugz.com/f/cases/12813

12816 Class comments missing in Multilingual package
	https://pharo.fogbugz.com/f/cases/12816

12811 Class comments missing in KernelTests packages
	https://pharo.fogbugz.com/f/cases/12811

12789 RPackage>>#moveClass:fromPackage:toTag: Ignores Tag
	https://pharo.fogbugz.com/f/cases/12789

12792 remove empty package ReactiveVariable
	https://pharo.fogbugz.com/f/cases/12792

'.
	self loadTogether: self script398 merge: false.
	ScriptLoader new unregisterPackage: 'ReactiveVariable'.
	self flushCaches.
