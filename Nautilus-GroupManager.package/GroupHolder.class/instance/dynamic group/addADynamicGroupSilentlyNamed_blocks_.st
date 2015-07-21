addADynamicGroupSilentlyNamed: entry blocks: aCollection 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ ^ nil ]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicGroup 
								named: entry 
								blocks: aCollection).
			^ group]