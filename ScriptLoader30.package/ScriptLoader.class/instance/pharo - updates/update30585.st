update30585
	"self new update30585"
	self withUpdateLog: '12203 remove old class builder
	https://pharo.fogbugz.com/f/cases/12203
	
12199 Definitively remove HTTPSocket
	https://pharo.fogbugz.com/f/cases/12199'.
	self loadTogether: self script240 merge: false.
	ScriptLoader new unloadPackage: 'Zinc-Patch-HTTPSocket'.
.
	self flushCaches.
