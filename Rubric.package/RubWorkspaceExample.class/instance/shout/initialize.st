initialize
	super initialize.
	textModel := RubSmalltalkScriptEditorModel new client: self.
	mustDeclareVariables := false.
