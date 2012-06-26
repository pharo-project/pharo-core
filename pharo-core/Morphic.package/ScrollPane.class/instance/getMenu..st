menu
getMenu: shiftKeyState
	"Answer the menu for this text view, supplying an empty menu to be filled in. If the menu selector takes an extra argument, pass in the current state of the shift key."
	| menu aMenu aTitle |
	getMenuSelector == nil ifTrue: [^ nil].
	menu := UIManager default newMenuIn: self for: model.
	aTitle := getMenuTitleSelector ifNotNil: [model perform: getMenuTitleSelector].
	getMenuSelector numArgs = 1 ifTrue:
		[aMenu := model perform: getMenuSelector with: menu.
		aTitle ifNotNil:  [aMenu addTitle: aTitle].
		^ aMenu].
	getMenuSelector numArgs = 2 ifTrue:
		[aMenu := model perform: getMenuSelector with: menu with: shiftKeyState.
		aTitle ifNotNil:  [aMenu addTitle: aTitle].
		^ aMenu].
	^ self error: 'The getMenuSelector must be a 1- or 2-keyword symbol'