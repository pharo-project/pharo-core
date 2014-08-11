saveImage
	<shortcut>
	^ KMKeymap
			shortcut: $s command shift
			action: [ Smalltalk snapshot: true andQuit: false. UIManager default inform: 'Image saved' ]