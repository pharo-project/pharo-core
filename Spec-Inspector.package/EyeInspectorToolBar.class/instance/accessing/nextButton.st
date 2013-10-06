nextButton
	nextButton
		ifNil: [ 
			nextButton := self instantiate: ButtonModel.
			nextButton label: '>'.
			nextButton
				action: [ self inspectorWrapper inspectNext ]].
	^ nextButton