initialize
	super initialize.
	textModel := RubSmalltalkScriptEditorModel new interactionModel: self.
	mustDeclareVariables := false.
