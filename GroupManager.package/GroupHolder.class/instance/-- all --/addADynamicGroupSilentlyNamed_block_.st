addADynamicGroupSilentlyNamed: entry block: aBlock 
	
	(self includesAGroupNamed: entry)
		ifTrue: [ ^ nil ]
		ifFalse: [ | group |
			group := self groups
						add: 
							(DynamicGroup 
								named: entry 
								block: aBlock).
			^ group]