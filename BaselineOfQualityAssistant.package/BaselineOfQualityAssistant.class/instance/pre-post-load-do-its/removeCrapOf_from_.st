removeCrapOf: aPackageName from: classNames 
	
	| package |
	package := (aPackageName asPackageIfAbsent: [ ^ self ]).
		
	classNames do: [ :className |
		className asClassIfPresent: [ :class |
			class protocols
				select: [ :prot | prot asLowercase beginsWith: package methodCategoryPrefix ]
				thenDo: [ :prot | class removeProtocol: prot ] ] ].
    
	package mcWorkingCopy modified: false