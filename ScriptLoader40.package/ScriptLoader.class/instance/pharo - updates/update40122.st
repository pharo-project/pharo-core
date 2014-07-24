update40122
	"self new update40122"
	self withUpdateLog: '13675 safer windows enumeration
	https://pharo.fogbugz.com/f/cases/13675

13676 safer usage of KMBuffer in HandMorph >> #generateMouseEvent:
	https://pharo.fogbugz.com/f/cases/13676

13669 CompilerNotifying test failing on main build
	https://pharo.fogbugz.com/f/cases/13669

13674 safer access to top current window
	https://pharo.fogbugz.com/f/cases/13674
	
13667 Delete empty package System-Tools
	https://pharo.fogbugz.com/f/cases/13667

'.
	self loadTogether: self script122 merge: false.
	ScriptLoader new deletePackage: 'System-Tools'.
	self flushCaches.
self cleanRepositories.
