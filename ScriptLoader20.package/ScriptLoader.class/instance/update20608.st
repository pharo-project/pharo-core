pharo - updates
update20608
	"self new update20608"
	Gofer it
	squeaksource3: 'Fuel';
	configuration;
	load.
((Smalltalk at: #ConfigurationOfFuel) project version: '1.9.1') load.
.
	self withUpdateLog: '10888 Backport 2.0: Compound Extension Methods Unpackaged
	https://pharo.fogbugz.com/f/cases/10888/Backport-2-0-Compound-Extension-Methods-Unpackaged

10730 Fix for stack serialization with Fuel
	https://pharo.fogbugz.com/f/cases/10730/Fix-for-stack-serialization-with-Fuel
	
10994 Backport 2.0: Delays do not work properly directly on image startup
	https://pharo.fogbugz.com/f/cases/10994/Backport-2-0-Delays-do-not-work-properly-directly-on-image-startup
'.
	self loadTogether: self script581 merge: false.
	ScriptLoader new 
	unloadPackageNamed: 'ConfigurationOfFuel';
	cleanRepositories.
	self flushCaches.
