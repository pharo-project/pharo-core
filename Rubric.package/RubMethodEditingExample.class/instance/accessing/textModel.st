textModel
	^ textModel ifNil: [ textModel := RubSmalltalkMethodEditorModel new client: self]