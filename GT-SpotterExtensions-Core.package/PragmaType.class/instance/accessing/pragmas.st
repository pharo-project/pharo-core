pragmas
	^ pragmas ifNil: [
		pragmas := OrderedCollection new.
		Object withAllSubclassesDo: [ :each |
			Pragma withPragmasIn: each do: [ :p |
				p keyword = self keyword ifTrue: [ 
					pragmas add: p ] ] ].
		pragmas ]