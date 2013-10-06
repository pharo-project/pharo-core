isMessage: selector sentInPackageNamed: packageName 
	^(self allSendersOf: selector inPackageNamed: packageName) notEmpty 