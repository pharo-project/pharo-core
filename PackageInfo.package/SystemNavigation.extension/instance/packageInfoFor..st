*PackageInfo
packageInfoFor: packageInfoOrString
	^packageInfoOrString isString
		ifTrue: [PackageInfo named: packageInfoOrString]
		ifFalse: [packageInfoOrString]