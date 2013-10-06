update30381
	"self new update30381"
	Gofer it 
	squeaksource3: 'FileTree';
	configuration;
	load.
((Smalltalk at: #ConfigurationOfFileTree) project version: '1.0.6') load.
(MCWorkingCopy allManagers 
	select: #needsSaving)
	do: [ :each |  each modified: false ].
ScriptLoader new	
	unloadPackageNamed: 'ConfigurationOfFileTree';
	cleanRepositories.
	self withUpdateLog: '11542 Load FileTree in the image core
	https://pharo.fogbugz.com/f/cases/11542
'.
	self loadTogether: self script173 merge: false.
	self flushCaches.
