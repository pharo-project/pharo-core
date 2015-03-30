render: anAction
	^ (UITheme current
		newButtonIn: nil
		for: anAction
		getState: nil
		action: self actionSelector
		arguments: self actionArguments
		getEnabled: nil
		label: (AlphaImageMorph new image: anAction icon)
		help: (anAction title , Character tab asString , anAction shortcutAsString) trimBoth)
		valueOfProperty: #noBorder ifAbsentPut: [ true ];
		valueOfProperty: #noFill ifAbsentPut: [ true ];
		setProperty: #wantsKeyboardFocusNavigation toValue: false;
		borderWidth: 0;
		yourself	"this is a hack to tell the GLMUITheme to not draw the border and the fill"	"to disable the focus"