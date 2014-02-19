update30768
	"self new update30768"
	ScriptLoader new addHomeRepositoryToAllPackages.
	self withUpdateLog: '12855 #removeClassVarNamed: is broken
	https://pharo.fogbugz.com/f/cases/12855

12909 initializeDefaultFromMC is over an old organizer (while calling RPackage stuff)
	https://pharo.fogbugz.com/f/cases/12909

12921 TreeInspector default right-click menu causes error
	https://pharo.fogbugz.com/f/cases/12921
	
12910 Add Inbox to all Versionner packages
	https://pharo.fogbugz.com/f/cases/12910

'.
	self loadTogether: self script421 merge: false.
	self flushCaches.
