current

	^ current ifNil: [ 
		| dirtyPackages |
		
		dirtyPackages := MCWorkingCopy allManagers 
			select: [ :e | e needsSaving ] 
			thenCollect: [ :e | 
				(KomitPackage package: e package)
					flush;
					yourself ].
		
		current := super new
			packages: dirtyPackages;
			yourself ]