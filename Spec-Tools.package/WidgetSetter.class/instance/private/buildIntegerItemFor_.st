buildIntegerItemFor: anAPIMethod 
	| pragma arguments retrievingMethod item |
	
	pragma := anAPIMethod pragmas detect: [ :e | e keyword beginsWith: #api:min:max:getter: ] ifNone: [ nil ].
	
	pragma 
		ifNil: [  
			arguments := #().
			retrievingMethod  := nil ]
		ifNotNil: [ 
			arguments := pragma arguments.
			retrievingMethod := arguments fourth ].
		
	item := IntegerApiSetter new
				model: self model;
				method: anAPIMethod selector;
				retrievingMethod: retrievingMethod;
				yourself.
	
	arguments size > 5 ifTrue: [
		self model 
				perform: arguments fifth
				with: [:newValue | item updateWith: newValue ]].
	
	^ item 