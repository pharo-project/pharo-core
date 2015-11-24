createModel
	| modelClass |
	
	self receiverClass
		ifNotNil: [^ NECTypedModel class: receiverClass].


	NECPreferences overrideModel ifTrue: [ 
		(controller workspace isNil
			and: [theClass notNil])
				ifTrue: [self isStartOfMethodDefinition 
					ifTrue: [^ NECOverrideModel class: theClass]]].
			
	self completionTokenIsLiteral ifTrue:[ ^ NECEmptyModel new].
				
	modelClass := NECUntypedModel.		
	(controller model respondsTo: #modelClass) 
		ifTrue: [
			controller model modelClass ifNotNil: [:class | modelClass :=  class]].	
			
	^ modelClass
		class: theClass
		temporaries: self temporaries
		additionals: controller additionals
		variables: variables
		selectors: selectors