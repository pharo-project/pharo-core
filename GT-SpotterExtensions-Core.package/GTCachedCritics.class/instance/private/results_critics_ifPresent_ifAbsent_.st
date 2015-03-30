results: aRule critics: aCritics ifPresent: aBlock1 ifAbsent: aBlock2
	| cache |
	^ aBlock1 value: ((cache := self results at: aRule class name ifAbsentPut: [ IdentityDictionary new ])
		at: aCritics environment 
		ifAbsent: [ 
			cache at: aCritics environment  put: aRule.
			[ aBlock2 value ] 
				on: Error 
				do: [ " ignore errors " ].
			aRule ])