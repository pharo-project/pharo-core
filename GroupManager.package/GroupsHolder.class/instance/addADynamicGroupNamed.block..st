dynamic group
addADynamicGroupNamed: entry block: aBlock 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ 
			self openError.
			^ nil]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicGroup 
								named: entry 
								block: aBlock).
								
			GroupAnnouncer announcer announce: ( AGroupHasBeenAdded group: group into: self ).
			^ group]