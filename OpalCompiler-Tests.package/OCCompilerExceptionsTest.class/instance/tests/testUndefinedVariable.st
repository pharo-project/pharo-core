testUndefinedVariable

	self
		compiling: 'griffle | goo | ^ goo' shouldRaise: OCUninitializedVariableWarning ;
		compiling: 'griffle [ | goo | ^ goo ] value' shouldRaise: OCUninitializedVariableWarning