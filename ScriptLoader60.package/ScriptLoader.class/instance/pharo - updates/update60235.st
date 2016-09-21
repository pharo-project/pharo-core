update60235
	"self new update60235"
	self withUpdateLog: '19023 debug menu in GTDebugger
	https://pharo.fogbugz.com/f/cases/19023

19101 Unload CubeHelix 
	https://pharo.fogbugz.com/f/cases/19101

19116 FTRootItem>>expandAll sends deprecated #name message
	https://pharo.fogbugz.com/f/cases/19116'.
	self loadTogether: self script60235 merge: false.
	self loadConfiguration: 'FastTable' version: '0.10.4'.
ScriptLoader new unloadPackageNamed: 'Chroma-CubeHelix'.
	self flushCaches.
