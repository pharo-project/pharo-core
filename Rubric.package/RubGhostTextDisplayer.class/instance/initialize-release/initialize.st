initialize
	super initialize.
	ghostText := RubEditingArea new.
	ghostText withoutAnyDecorator.
	ghostText backgroundColor: Color transparent.
	textColor := self defaultTextColor.
	ghostText beReadOnly.
	ghostText beWrapped.
