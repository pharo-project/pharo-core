referencesInPackage: aPackageInfo
	| classes |
	classes := IdentitySet new.
	aPackageInfo classes do: [ :cls | classes addAll: (self referencesInClass: cls) ].
	aPackageInfo methods do: [ :mr | classes addAll: (self referencesInCompiledMethod: mr compiledMethod )].
	^ classes