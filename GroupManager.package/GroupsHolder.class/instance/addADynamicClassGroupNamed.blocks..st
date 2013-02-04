dynamic group
addADynamicClassGroupNamed: entry blocks: aCollection 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ 
			self openError: entry.
			^ nil]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicClassGroup 
								named: entry 
								blocks: aCollection).

			GroupAnnouncer uniqueInstance announce: ( AGroupHasBeenAdded group: group into: self ).
			^ group]