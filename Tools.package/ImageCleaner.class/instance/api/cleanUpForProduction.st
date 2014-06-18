cleanUpForProduction
	"self new cleanUpForProduction"
	
	"trim MC ancestory information"
	MCVersionInfo allInstances do: [ :each | each instVarNamed: 'ancestors' put: nil ].

	"delete logo"	
	PolymorphSystemSettings showDesktopLogo: false.

	self packagesForCleanUpInProduction do: [ :each | (MCPackage named: each) unload ].	
	self helpPackages do: [ :each | (MCPackage named: each) unload ].	
	self testPackages do: [ :each | (MCPackage named: each) unload ].
	self examplePackages do: [ :each | (MCPackage named: each) unload ].
	(MCPackage named: 'ScriptLoader40') unload.	
		
		
	(MCPackage named: 'MonticelloMocks') unload.	
	(MCPackage named: 'ToolsTest') unload.	
	(MCPackage named: 'Announcements-Tests-Core') unload.	
	(MCPackage named: 'AST-Tests-Core') unload.	
	(MCPackage named: 'AST-Interpreter-Test') unload.	
	(MCPackage named: 'Ring-Tests-Containers') unload.	
	(MCPackage named: 'Ring-Tests-Kernel') unload.	
	(MCPackage named: 'Ring-Tests-Monticello') unload.	
	(MCPackage named: 'Regex-Tests-Core') unload.	
	(MCPackage named: 'Refactoring-Tests-Changes') unload.	
	(MCPackage named: 'Refactoring-Tests-Core') unload.	
	(MCPackage named: 'Refactoring-Tests-Critics') unload.	
	(MCPackage named: 'Refactoring-Tests-Environment') unload.	
	(MCPackage named: 'FileSystem-Tests-Core') unload.	
	(MCPackage named: 'FileSystem-Tests-Disk') unload.	
	(MCPackage named: 'FileSystem-Tests-Memory') unload.		
	
	self cleanUpForRelease.
	