instance creation
on: aPackageName

	| mb manifest|

	mb := self new. 
	(mb manifestOf: aPackageName) isNil 
			ifTrue: [mb createManifestOf: aPackageName]
		 	ifFalse: [ mb isObsoleteManifest 
				ifTrue: [
					mb manifest theNonMetaClass removeFromSystem.
					mb createManifestOf: aPackageName]].
	
	^ mb	
