update30736
	"self new update30736"
	self withUpdateLog: '12727 Duplicated categories in Nautilus
	https://pharo.fogbugz.com/f/cases/12727

12157 Wrong announcement of ClassModifiedClassDefinition
	https://pharo.fogbugz.com/f/cases/12157

11670 strange MC package Generated-code-non-existing-package
	https://pharo.fogbugz.com/f/cases/11670
	'.
	self loadTogether: self script389 merge: false.
	ScriptLoader new unregisterPackage: 'Generated-code-non-existing-package'.
	self flushCaches.
