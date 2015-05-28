saveImage
	<shortcut>
	^ KMKeymap
		shortcut: PharoShortcuts current saveImageShortcut
		action: [ 
			Smalltalk snapshot: true andQuit: false.
			UIManager default inform: 'Image saved' ]