addADynamicClassGroupSilentlyNamed: entry blocks: aCollection 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ ^ nil ]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicClassGroup 
								named: entry 
								blocks: aCollection).
			^ group]