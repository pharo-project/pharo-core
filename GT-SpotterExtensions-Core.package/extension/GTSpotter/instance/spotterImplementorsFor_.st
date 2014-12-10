spotterImplementorsFor: aStep
	<spotterOrder: 30>
	| processor |
	processor := aStep listProcessor.
	processor 
		title: 'Implementors';
		filter: [ :originalQuery :stream |
				| aCollection query |
				aCollection := OrderedCollection  new.
				query := originalQuery trimBoth.
				SystemNavigation default allBehaviorsDo: [:class | 
					(class includesSelector: query asSymbol)
						ifTrue: [
							| method |
							method := class>>(query asSymbol).
							aCollection add: method.
							aCollection size > 5 ifFalse: [ 
								stream addObject: method inProcessor: processor ]]].
				aCollection ].
	^ processor