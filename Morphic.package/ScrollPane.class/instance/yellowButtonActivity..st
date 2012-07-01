scroll bar events
yellowButtonActivity: shiftKeyState
	
	(self getMenu: shiftKeyState) 
		ifNotNilDo: [ :menu|
			menu setInvokingView: self.
			menu popUpEvent: self activeHand lastEvent in: self world.
			^ true].
	^ false