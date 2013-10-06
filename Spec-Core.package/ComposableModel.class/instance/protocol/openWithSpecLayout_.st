openWithSpecLayout: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	(window contents notNil and: [ self needRebuild not ])
		ifTrue: [
			window contents rebuildWithSpecLayout: aSpec ]
		ifFalse: [ 
			window contents: (WindowModel new model: self).
			window contents openWithSpecLayout: aSpec.
			self takeKeyboardFocus ].
		
	^ window contents