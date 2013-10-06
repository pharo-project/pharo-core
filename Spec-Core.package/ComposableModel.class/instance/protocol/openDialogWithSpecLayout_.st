openDialogWithSpecLayout: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	(window contents notNil and: [ self needRebuild not ])
		ifTrue: [
			window contents rebuildWithSpec: aSpec ]
		ifFalse: [
			window contents: (DialogWindowModel new model: self).
			window contents openWithSpecLayout: aSpec.
			self initializeDialogWindow: window contents.
			window contents updateTitle.
			self takeKeyboardFocus ].
		
	^ window contents