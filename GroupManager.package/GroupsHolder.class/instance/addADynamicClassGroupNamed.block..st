dynamic group
addADynamicClassGroupNamed: entry block: aBlock 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ 
			self openError.
			^ nil]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicClassGroup 
								named: entry 
								block: aBlock).
								
			GroupAnnouncer uniqueInstance announce: ( AGroupHasBeenAdded group: group into: self ).
			^ group]