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
			| oldProtocol newProtocol |
			
			"I'm passing through all methods, but they can belong to same class, and 
			 silentlyRenameCategory:toBe: does a rename of complete protocol. 
			 So in the next method, I could be replacing something already replaced. 
			 That's why I need to check the protocol. 
			 Of course I can think at least two ways of doing this better, but no time to improve now :)"
			oldProtocol := aMethod protocol allButFirst.
			((oldProtocol beginsWith: aString) 
				and: [ ((oldProtocol allButFirst: oldPackageName size) copyUpTo: $-) notEmpty ]) 				
				ifFalse: [  
					newProtocol := ('*', aString, (oldProtocol allButFirst: oldPackageName size)) asSymbol.
					aMethod methodClass organization 
						silentlyRenameCategory: '*', oldProtocol asSymbol 
						toBe: newProtocol ] ] ].	

	^ aPackage