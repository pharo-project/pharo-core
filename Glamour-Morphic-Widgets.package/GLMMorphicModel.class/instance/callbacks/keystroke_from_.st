keystroke: anEvent from: aMorph
	| action |

	action := self allKeystrokeActions detect: [:a | a shortcut = anEvent keyCharacter] ifNone: [nil].
	action ifNotNil: [ 
		self announce: (GLMKeyStroke action: action).
		^ true ].
	^ false