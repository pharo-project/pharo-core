testing
canUseDirectProxyFnAddress
	"Answer true if code generation routines can use interpreterProxy
	function addresses directly (available after bootstrap) "
	
	^ NativeBoost forCurrentPlatform isBootstrapping not
		and: [ gen optDirectProxyFnAddress ]