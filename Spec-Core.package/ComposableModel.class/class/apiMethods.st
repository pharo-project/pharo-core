protocol
apiMethods
	| methods class |
	methods := OrderedCollection new.
	class := self.
	[ class = ComposableModel ]
		whileFalse: [| newMethods | 
			newMethods := ((SpecPragmaCollector behavior: class)
									filter: [:prg | prg keyword beginsWith: 'api:' ];
									reset;
									collected) collect: [:e | e method ].
			newMethods do: [:m | (methods noneSatisfy: [:m2 | m2 selector = m selector ])
										ifTrue: [ methods add: m ]].
			class := class superclass ].
		
	^ methods