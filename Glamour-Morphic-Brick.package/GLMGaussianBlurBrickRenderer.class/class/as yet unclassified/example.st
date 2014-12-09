example

	|morph|
	morph := GLMFoundationBrick new.
	morph brickRoot renderer: self new.
	morph extent: 300@300.
	morph openCenteredInWorld color: Color transparent.
	morph color: Color transparent.
	morph borderWidth: 3.
	morph borderColor: Color gray.
	morph wantsToBeTopmost