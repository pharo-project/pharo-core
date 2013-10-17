buildItemFor: anAPIMethod kind: aClass
	| pragma arguments retrievingMethod item |
	
	pragma := anAPIMethod pragmas detect: [ :e | e keyword beginsWith: #api:getter: ] ifNone: [ nil ].
	
	pragma 
		ifNil: [  
			arguments := #().
			retrievingMethod  := nil ]
		ifNotNil: [ 
			arguments :=pragma arguments.
			retrievingMethod := arguments second ].
		
	item := aClass new
				model: self model;
				method: anAPIMethod selector;
				retrievingMethod: retrievingMethod;
				yourself.
				
	arguments size >2 
		ifTrue: [ 
			self model 
					perform: arguments third
					with: [:newValue | item updateWith: newValue ]].
	
	^ item 