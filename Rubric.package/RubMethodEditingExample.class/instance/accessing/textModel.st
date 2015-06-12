textModel
	^ textModel ifNil: [ textModel := RubSmalltalkMethodEditorModel new interactionModel: self]