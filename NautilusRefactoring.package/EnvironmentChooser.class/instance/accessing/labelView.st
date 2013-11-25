labelView
	^ labelView ifNil: [ 
		labelView := self instantiate: LabelModel.
		labelView text: 'Environment:' ]