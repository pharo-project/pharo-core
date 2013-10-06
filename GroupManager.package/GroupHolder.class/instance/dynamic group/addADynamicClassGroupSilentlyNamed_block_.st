addADynamicClassGroupSilentlyNamed: entry block: aBlock 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ ^ nil ]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicClassGroup 
								named: entry 
								block: aBlock).
			^ group]