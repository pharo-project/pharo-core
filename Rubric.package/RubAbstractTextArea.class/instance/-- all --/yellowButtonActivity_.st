yellowButtonActivity: shiftKeyState 
	"Invoke the text-editing menu.
	Check if required first!"
	self wantsYellowButtonMenu
		ifFalse: [ ^ false ].	
	(self getMenu: shiftKeyState)
		ifNotNilDo: [ :menu|
			menu setInvokingView: self editor.
			menu invokeModal. 
			self changed.
			^ true].
		
	^ true