protocol
openWithSpec: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	(window notNil and: [ self needRebuild not ])
		ifFalse: [ 
			window := StandardWindow new model: self.
			self addAll: window withSpec: aSpec.
			window openInWorld.
			window title: self title.
			self takeKeyboardFocus ]
		ifTrue: [ | sub |
			sub := window submorphs copy.
			window removeAllMorphs.
			sub allButLast do: [:e | window addMorphBack: e ].
			self needRebuild: true.
			self addAll: window withSpec: aSpec ].
		
	
	^ window