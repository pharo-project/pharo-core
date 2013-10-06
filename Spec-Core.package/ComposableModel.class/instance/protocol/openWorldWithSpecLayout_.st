openWorldWithSpecLayout: aSpec
	"Build the widget using the spec name provided as argument and display it into the world"

	(window contents notNil and: [ self needRebuild not ])
		ifTrue: [
			window contents rebuildWithSpecLayout: aSpec ]
		ifFalse: [ 
			window contents: (WorldModel new model: self).
			window contents openWithSpecLayout: aSpec.
			self takeKeyboardFocus ].
		
	^ window contents