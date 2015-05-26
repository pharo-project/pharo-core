selectorChooserHandlesKeyboard: aKeyboardEvent
	^ (selectorChooser notNil and: [ selectorChooser handlesKeyboard: aKeyboardEvent ])
