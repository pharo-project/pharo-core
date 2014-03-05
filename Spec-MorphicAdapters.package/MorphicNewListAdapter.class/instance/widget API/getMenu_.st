getMenu: shiftKeyState

	^ (self model getMenu: shiftKeyState) 
		ifNotNil: [ :menuModel | menuModel buildWithSpecAsPopup ]