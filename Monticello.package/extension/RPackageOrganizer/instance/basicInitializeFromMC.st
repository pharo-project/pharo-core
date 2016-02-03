basicInitializeFromMC
	self allManagers
		do: [ :workingCopy | self basicRegisterPackage: (RPackage named: workingCopy packageName) ]
		displayingProgress: 'Importing monticello packages'.
		
	Smalltalk allClassesAndTraits 
		do: [ :eachBehavior | self initializeFromMCFor: eachBehavior ]
		displayingProgress: 'Importing behaviors'.

	Smalltalk allClassesAndTraits 
		do: [ :eachBehavior | 
			self initializeFromMCMethodsFor: eachBehavior.
			self initializeFromMCMethodsFor: eachBehavior theMetaClass ]
		displayingProgress: 'Importing methods'.

	Smalltalk allClassesAndTraits 
		do: [ :eachBehavior |
			eachBehavior organization extensionProtocols do: [ :eachProtocol | 
				self 
					initializeFromMCExtensionsFor: eachBehavior 
					protocol: eachProtocol ].
			eachBehavior theMetaClass organization extensionProtocols do: [ :eachProtocol | 
				self 
					initializeFromMCExtensionsFor: eachBehavior theMetaClass 
					protocol: eachProtocol ] ]
		displayingProgress: 'Importing extensions'.
