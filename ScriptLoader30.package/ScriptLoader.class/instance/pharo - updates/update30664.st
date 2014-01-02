update30664
	"self new update30664" 
	self withUpdateLog: '12517 SystemNavigation methodHierarchyBrowserForClass:selector: discards package information
	https://pharo.fogbugz.com/f/cases/12517

12476 Undeclared 
	https://pharo.fogbugz.com/f/cases/12476   
	'.
	self loadTogether: self script317 merge: false.
	ScriptLoader new unloadPackage: 'Athens-Tutorial'.
	self flushCaches.
