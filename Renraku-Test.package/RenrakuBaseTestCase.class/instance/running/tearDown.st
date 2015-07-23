tearDown
	testPackage methods do: #removeFromSystem.
	testPackage definedClasses do: #removeFromSystem.
	testPackage unregister.
	
	super tearDown 