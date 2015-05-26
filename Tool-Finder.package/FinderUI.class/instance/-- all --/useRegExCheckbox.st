useRegExCheckbox
	^ useRegExCheckbox ifNil: [self buildRegExChooser]
