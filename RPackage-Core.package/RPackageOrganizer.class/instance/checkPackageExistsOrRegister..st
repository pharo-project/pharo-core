private registration
checkPackageExistsOrRegister: packageName
	(self packages 
		anySatisfy: [ :each | self category: each packageName matches: packageName ])
		ifFalse: [ (RPackage named: packageName capitalized) register ] 