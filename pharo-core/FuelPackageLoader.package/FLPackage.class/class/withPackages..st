instance creation
withPackages: packageNames

	| behaviors methods packageInfo |
	behaviors := OrderedCollection new.
	methods := OrderedCollection new.
	packageNames do: [:packageName |
		packageInfo := PackageInfo named: packageName.
		behaviors addAll: (self behaviorsLocalTo: packageInfo).
		methods addAll: (self extensionMethodsTo: packageInfo)].
	
	^ self basicNew
		initializeWithBehaviors: behaviors
		extensionMethods: methods;
		yourself