pharo - updates
update20430
	"self new update20430"
	self withUpdateLog: 'Issue 7056:	integrate NativeBoost
	http://code.google.com/p/pharo/issues/detail?id=7056'.
	self loadTogether: self script409 merge: false.
	Gofer it 
	squeaksource: 'NativeBoost';
	configuration;
	load.
(ConfigurationOfNativeBoost project version: #stable)
	load: #('Core-AllPlatforms' 'Tests').
	
ScriptLoader new 
	deletePackage:'ConfigurationOfSpec';
	deletePackage:'ConfigurationOfRefactoringBrowser';
	deletePackage:'ConfigurationOfManifest';
	deletePackage:'ConfigurationOfAsmJit';
	deletePackage:'ConfigurationOfNativeBoost'.
.
	self flushCaches.
