lineAnnotationMorph
	^ RubTextFieldArea new
	withoutAnyDecorator;
	backgroundColor: Color transparent;
	font: self fontToUse;
	beReadOnly;
	textColor: self textColor