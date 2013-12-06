buildIntegerItemFor: anAPIMethod
	| arguments retrievingMethod item |
	anAPIMethod pragmas
		detect: [ :e | e keyword beginsWith: #api:min:max:getter: ]
		ifFound: [ :pragma | 
			arguments := pragma arguments.
			retrievingMethod := arguments fourth ]
		ifNone: [ 
			arguments := #().
			retrievingMethod := nil ].
	item := IntegerApiSetter new
		model: self model;
		method: anAPIMethod selector;
		retrievingMethod: retrievingMethod;
		yourself.
	arguments size > 5
		ifTrue: [ self model perform: arguments fifth with: [ :newValue | item updateWith: newValue ] ].
	^ item