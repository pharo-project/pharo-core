accessing
createModel
	| modelClass |
	self receiverClass
		ifNotNil: [^ NECTypedModel class: receiverClass].
	(controller workspace isNil
		and: [theClass notNil])
		ifTrue: [completionIndex = 1
				ifTrue: [^ NECOverrideModel class: theClass]].
			
	modelClass := NECUntypedModel.		
	(controller model respondsTo: #modelClass) ifTrue: [controller model modelClass ifNotNilDo: [:class | modelClass :=  class]].		
	^ modelClass
		class: theClass
		temporaries: self temporaries
		additionals: controller additionals
		variables: variables
		selectors: selectors