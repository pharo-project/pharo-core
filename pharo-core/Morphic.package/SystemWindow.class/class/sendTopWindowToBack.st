top window
sendTopWindowToBack
	"Send the top window of the world to the back, activating the one just beneath it"

	TopWindow ifNotNil:
		[TopWindow sendToBack]