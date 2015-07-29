sourceTextModel
	^ sourceTextModel ifNil: [ sourceTextModel := RubScrolledTextModel new interactionModel: nil ].