update30524
	"self new update30524"
	self withUpdateLog: '11938 A lot of empty Spec packages which should be deleted
	https://pharo.fogbugz.com/f/cases/11938

12003 UIManager small cleanup
	https://pharo.fogbugz.com/f/cases/12003

12006 RPackage/RPackageTag get out of sync on class rename
	https://pharo.fogbugz.com/f/cases/12006/'.
	self loadTogether: self script179 merge: false.
	ScriptLoader new deletePackage: 'CodeImport-Tests'.
ScriptLoader new deletePackage: 'Collections-Text'.
	self flushCaches.
