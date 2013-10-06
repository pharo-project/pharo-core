importFromPackageInfoPass2: info package: package

	info extensionMethodsFromAllSystem  
		do: [ :each |
			"it seems that PackageInfo does not count methods from a trait inside the class package. We should do the 
			same, as monticello expect this behavior"
			((each isValid 
				and: [ each isLocalSelector ])
				and: [ (self packageForProtocol: each protocol inClass: each realClass) = package ])
				ifTrue: [ package addMethod: each compiledMethod ] ].

	^ package