update40202
	"self new update40202"
	self withUpdateLog: '13849 PointerExplorer item menu needs PointerEyeElement to implement #accessorCode 
	https://pharo.fogbugz.com/f/cases/13849

12503 unreferenced parameter in SortHierarchically>>buildHierarchyForClasses:fromPackage:
	https://pharo.fogbugz.com/f/cases/12503
	
13861 make NOCController default OController
	https://pharo.fogbugz.com/f/cases/13861

'.
	self loadTogether: self script202 merge: false.
	NECPreferences useController: NOCController.
.
	self flushCaches.
self cleanRepositories.
