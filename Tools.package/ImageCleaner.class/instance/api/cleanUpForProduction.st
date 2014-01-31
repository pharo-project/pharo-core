cleanUpForProduction
	"self new cleanUpForProduction"
	
	"trim MC ancestory information"
	MCVersionInfo allInstances do: [ :each | each instVarNamed: 'ancestors' put: nil ].

	"delete logo"	
	PolymorphSystemSettings showDesktopLogo: false.

	self packagesForCleanUpInProduction do: [ :each | (MCPackage named: each) unload ].	
	self helpPackages do: [ :each | (MCPackage named: each) unload ].	
	self testPackages do: [ :each | (MCPackage named: each) unload ].			
	(MCPackage named: 'ScriptLoader30') unload.	
	
	self cleanUpForRelease.
	