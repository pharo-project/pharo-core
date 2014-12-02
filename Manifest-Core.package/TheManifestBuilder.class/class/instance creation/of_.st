of: aItem
	| mb  |

	mb := self new. 
	(mb manifestOf: aItem) 
			ifNil: [mb createManifestOf: aItem]
		 	ifNotNil: [ mb isObsoleteManifest 
				ifTrue: [
					mb manifest class theNonMetaClass removeFromSystem.
					mb createManifestOf: aItem]].
	
	^ mb	
