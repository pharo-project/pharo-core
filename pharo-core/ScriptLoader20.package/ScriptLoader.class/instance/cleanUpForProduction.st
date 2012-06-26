cleaning
cleanUpForProduction
	"self new cleanUpForProduction"
	
	"trim MC ancestory information"
	MCVersionInfo allInstances do: [ :each | each instVarNamed: 'ancestors' put: nil ].

	"delete logo"	
	PolymorphSystemSettings showDesktopLogo: false.

	"unload packages"
	Smalltalk globals at: #SUnitUnloader ifPresent:[ :unloader | unloader new unloadAll  ].
	(MCPackage named: 'Announcements-Help') unload.
	(MCPackage named: 'Regex-Help') unload.
	(MCPackage named: 'HelpSystem-Core') unload.
	(MCPackage named: 'FixUnderscores') unload.
	(MCPackage named: 'Deprecated14') unload.
	
	self cleanUpForRelease.
	(MCPackage named: self theScriptLoaderPackageName) unload.
	
	Smalltalk cleanUp: true except: #() confirming: false.
	Smalltalk garbageCollect.
	