update30327
	"self new update30327"
	Gofer new
 smalltalkhubUser: 'Pharo'  project: 'NativeBoost';
 configuration;
 load.

[ (Smalltalk at: #ConfigurationOfNativeBoost) loadDevelopment  ]
valueSupplyingAnswer: 'Load' .

ScriptLoader new unloadPackageNamed: 'ConfigurationOfNativeBoost'.
	self withUpdateLog: '11144 Merge Latest NativeBoost with Pharo 3.0
	https://pharo.fogbugz.com/f/cases/11144
'.
	self loadTogether: self script119 merge: false.
	self flushCaches.
