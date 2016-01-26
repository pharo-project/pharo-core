removeRenrakuCrap

	| qaPackage |
	
	qaPackage := (#QualityAssistant asPackageIfAbsent: [ ^ self ]).
	
	self removedExtendedCLasses do: [ :className |
		className asClassIfPresent: [ :class |
			class protocols
				select: [ :prot | prot asLowercase beginsWith: qaPackage methodCategoryPrefix ]
				thenDo: [ :prot | class removeProtocol: prot ] ] ].
    
	qaPackage mcWorkingCopy modified: false