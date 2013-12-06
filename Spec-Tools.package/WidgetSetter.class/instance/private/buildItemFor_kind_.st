buildItemFor: anAPIMethod kind: aClass
	| arguments retrievingMethod item |
	anAPIMethod pragmas
		detect: [ :e | e keyword beginsWith: #api:getter: ]
		ifFound: [ :pragma | 
			arguments := pragma arguments.
			retrievingMethod := arguments second ]
		ifNone: [ 
			arguments := #().
			retrievingMethod := nil ].
	item := aClass new
		model: self model;
		method: anAPIMethod selector;
		retrievingMethod: retrievingMethod;
		yourself.
	arguments size > 2
		ifTrue: [ self model perform: arguments third with: [ :newValue | item updateWith: newValue ] ].
	^ item