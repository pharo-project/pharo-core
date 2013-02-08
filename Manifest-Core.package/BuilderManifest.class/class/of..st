instance creation
of: aItem
	| mb  |

	mb := self new. 
	(mb manifestOf: aItem) isNil 
			ifTrue: [mb createManifestOf: aItem]
		 	ifFalse: [ mb isObsoleteManifest 
				ifTrue: [
					mb manifest theNonMetaClass removeFromSystem.
					mb createManifestOf: aItem]].
	
	^ mb	
