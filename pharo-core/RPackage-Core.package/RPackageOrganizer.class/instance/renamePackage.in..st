renaming
renamePackage: aPackage in: aString

	| classes oldPackageName |
	(packages includesKey: aString asSymbol)
		ifTrue: [ ^ self openAlreadyExistingError ].

	oldPackageName := aPackage name.
	classes := aPackage definedClasses.
	classes do: [:class |
		class category: aString ].	
	self unregisterPackage: aPackage.
	aPackage name: aString.
	self registerPackage: aPackage.
	aPackage extensionMethods do: [ :aMethod | 
		| aProtocol |
		aProtocol := aMethod methodClass organization categoryOfElement: aMethod selector.
		aMethod methodClass organization renameCategory: aProtocol asSymbol 
					toBe: (aProtocol copyReplaceAll: oldPackageName with: aString) asSymbol.
	].
	
	classes do: [:class |
		class category: aString ].
	
	^ aPackage