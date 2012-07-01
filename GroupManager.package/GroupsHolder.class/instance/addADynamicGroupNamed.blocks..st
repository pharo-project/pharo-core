dynamic group
addADynamicGroupNamed: entry blocks: aCollection 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ 
			self openError.
			^ nil]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicGroup 
								named: entry 
								blocks: aCollection).

			GroupAnnouncer announcer announce: ( AGroupHasBeenAdded group: group into: self ).
			^ group]