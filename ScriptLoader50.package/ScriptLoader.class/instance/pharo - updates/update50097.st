update50097
	"self new update50097"
	self withUpdateLog: '15710 ExternalChangesBrowser should register to serviceFiles
	https://pharo.fogbugz.com/f/cases/15710

15709 Remove FilePackage and PseudoClasses 
	https://pharo.fogbugz.com/f/cases/15709

15708 Deleting a class with nautilus raises an error
	https://pharo.fogbugz.com/f/cases/15708'.
	self loadTogether: self script50097 merge: false.
	
FileServices unregisterFileReader: ChangeList.
Smalltalk tools cleanUp.
ScriptLoader new unloadPackage: 'System-FilePackage'.
	self flushCaches.
