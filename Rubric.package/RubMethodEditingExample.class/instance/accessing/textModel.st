textModel
	^ textModel
		ifNil: [ 
			textModel := RubScrolledTextModel
				new;
				beForSmalltalkCode;
				interactionModel: self;
				yourself ]