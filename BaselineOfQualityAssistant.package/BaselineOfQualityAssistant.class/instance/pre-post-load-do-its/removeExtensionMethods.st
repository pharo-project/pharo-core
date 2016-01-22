removeExtensionMethods

	
	#(QualityAssistant QualityAssistantRecording)
	
		select: [ :packageName |
			RPackageOrganizer default includesPackageNamed: packageName ]
		
		thenDo: [ :packageName |
			| package |
	 		package := packageName asPackage.
		
			package extendedClasses do: [ :class |
				class protocols
  	  				select: [ :prot | prot asLowercase beginsWith: package methodCategoryPrefix ]
    				thenDo: [ :prot | class removeProtocol: prot ] ].
    
			package mcWorkingCopy modified: false ]