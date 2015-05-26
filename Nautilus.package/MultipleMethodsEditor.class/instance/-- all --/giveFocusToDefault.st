giveFocusToDefault

	self hasSingleElement ifTrue: [ ^ self ].
	buttonsContainer submorphs copy reversed second model action