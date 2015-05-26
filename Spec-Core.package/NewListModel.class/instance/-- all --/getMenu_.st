getMenu: shiftKeyState
	| menu |
	menuHolder value ifNil: [ ^ nil ].
	menuHolder value isBlock ifFalse: [ ^ menuHolder value ].
	menu := MenuModel new.
	menuHolder value cull: menu cull: shiftKeyState.
	menuTitle value ifNotNil: [ :title | menu addTitle: title ].
	^ menu
