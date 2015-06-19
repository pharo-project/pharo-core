initialize
	super initialize.
	patternModel := RubScrolledTextModel new.
	patternModel announcer 
		subscribe: RubTextUpdatedInModel 
		send: #whenPatternChanged: 
		to: self.
	autoAccept := true.
	ghostString := ''