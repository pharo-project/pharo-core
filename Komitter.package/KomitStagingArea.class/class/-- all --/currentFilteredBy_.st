currentFilteredBy: aFilterBlock

	^ current ifNil: [ 
		| dirtyPackages |
		
		dirtyPackages := MCWorkingCopy allManagers 
			select: [ :workingCopy | workingCopy needsSaving and: (aFilterBlock cull: workingCopy) ] 
			thenCollect: [ :workingCopy | 
				(KomitPackage package: workingCopy package)
					flush;
					yourself ].
		
		current := super new
			packages: dirtyPackages;
			yourself ]