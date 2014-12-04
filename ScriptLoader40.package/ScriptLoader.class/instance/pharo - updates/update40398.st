update40398
	"self new update40398"
	self withUpdateLog: '12854 TestRunner package pane <shift> key multi-select not working
	https://pharo.fogbugz.com/f/cases/12854

14565 ManifestKernelTest superclass should be PackageManifest 
	https://pharo.fogbugz.com/f/cases/14565'.
	self loadTogether: self script398 merge: false.
	self flushCaches.
