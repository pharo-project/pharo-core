renaming
renamePackage: aPackage in: aString

	| classes oldPackageName |
	(packages includesKey: aString asSymbol)
		ifTrue: [ ^ self openAlreadyExistingError ].

	oldPackageName := aPackage name.
	classes := aPackage definedClasses.

	self unregisterPackage: aPackage.
	aPackage name: aString.
	self registerPackage: aPackage.

	SystemAnnouncer uniqueInstance suspendAllWhile: [
		classes do: [:class | class category: aString ].
		aPackage extensionMethods do: [ :aMethod | 
			| aProtocol |
			aProtocol := aMethod methodClass organization categoryOfElement: aMethod selector.
			aMethod methodClass organization 
				silentlyRenameCategory: aProtocol asSymbol 
				toBe: (aProtocol copyReplaceAll: oldPackageName with: aString) asSymbol ] ].	

	^ aPackage