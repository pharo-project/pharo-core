instance creation
named: packageName

	| packageInfo |
	packageInfo := PackageInfo named: packageName.
	^ self basicNew
		initializeWithBehaviors: (self behaviorsLocalTo: packageInfo) 
		extensionMethods: (self extensionMethodsTo: packageInfo);
		yourself