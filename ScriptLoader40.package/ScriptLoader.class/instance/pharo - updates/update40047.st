update40047
	"self new update40047"
	self withUpdateLog: '13412 add Helper: resetIvarSlots
	https://pharo.fogbugz.com/f/cases/13412

13414 Keyboard shortcuts in Nautilus stopped working
	https://pharo.fogbugz.com/f/cases/13414
	
13418 reflective API for Slots on Object
	https://pharo.fogbugz.com/f/cases/13418'.
	self loadTogether: self script47 merge: false.
	KMShortcutHandler registerToolsOn: Smalltalk tools.
	self flushCaches.
