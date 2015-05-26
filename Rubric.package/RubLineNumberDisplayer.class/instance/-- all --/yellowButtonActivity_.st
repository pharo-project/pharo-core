yellowButtonActivity: shiftKeyState 
	"Invoke the text-editing menu.
	Check if required first!"
	(self getMenu: shiftKeyState)
		ifNotNilDo: [ :menu|
			menu invokeModal. 
			self changed.
			^ true].
	^ true