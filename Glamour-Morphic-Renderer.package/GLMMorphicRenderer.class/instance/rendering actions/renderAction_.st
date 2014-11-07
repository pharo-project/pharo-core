renderAction: anAction
	^(UITheme current 
		newButtonIn: nil 
		for: anAction
		getState: nil
		action: #morphicActOn:
		arguments: {}
		getEnabled: nil
		label: (AlphaImageMorph new image: anAction icon)
		help: (anAction title, Character tab asString, anAction shortcutAsString) trimBoth)
		valueOfProperty: #noBorder ifAbsentPut: [true]; "this is a hack to tell the GLMUITheme to not draw the border and the fill"
		valueOfProperty: #noFill ifAbsentPut: [true];
		setProperty: #wantsKeyboardFocusNavigation toValue: false; "to disable the focus"
		borderWidth: 0;
		yourself