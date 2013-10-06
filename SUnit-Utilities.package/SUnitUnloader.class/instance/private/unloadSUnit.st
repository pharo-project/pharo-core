unloadSUnit
	Smalltalk globals
		at: #TestCase
		ifPresent: [ :class | SystemAnnouncer uniqueInstance unsubscribe: class ].

	Smalltalk tools remove: #testRunner.	
		
	(self sortedForRemovePackages: self sunitPackages) 
		do: [ :each | (MCPackage named: each name) unload ].