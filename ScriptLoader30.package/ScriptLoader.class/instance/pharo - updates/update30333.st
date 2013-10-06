update30333
	"self new update30333"
	self withUpdateLog: '- 11416 Integrate latest changes to NB
	https://pharo.fogbugz.com/default.asp?11416
'.
	self loadTogether: self script125 merge: false.
	Gofer new
 smalltalkhubUser: 'Pharo'  project: 'NativeBoost';
 configuration;
 load.

[ (Smalltalk globals at: #ConfigurationOfNativeBoost) loadDevelopment  ]
valueSupplyingAnswer: 'Load' .

self unloadPackageNamed: 'ConfigurationOfNativeBoost'.
self unloadPackageNamed: 'ConfigurationOfAsmJit'.
self cleanRepositories.
	self flushCaches.
