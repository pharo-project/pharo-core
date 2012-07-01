label
setLabelWidgetAllowance
	^ labelWidgetAllowance := CodeHolder optionalButtons
				ifTrue: [super setLabelWidgetAllowance]
				ifFalse: [180]