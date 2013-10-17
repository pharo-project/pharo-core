mcPackageFor: aRPackage

	^ bindingsRtoMC 
		at: aRPackage 
		ifAbsent: [
			( self retrieveMCPackageFor: aRPackage )
				ifNotNil: [:mcPackage | 
					(bindingsMCtoR at: mcPackage ifAbsentPut: (Set new)) add: aRPackage.
					bindingsRtoMC at: aRPackage put: mcPackage ]
				ifNil: [ nil ]]