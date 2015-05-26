maximumButtons
	^ MaximumButtons ifNil: [MaximumButtons := self maximumButtonsDefault]