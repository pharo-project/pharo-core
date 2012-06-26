controls
buttonWithSelector: aSelector 
	"If receiver has a control button with the given action selector answer it, else answer nil.  morphic only at this point"

	| aWindow aPane |
	((aWindow := self containingWindow) isSystemWindow) 
		ifFalse: [^nil].
	(aPane := aWindow submorphNamed: 'buttonPane') ifNil: [^nil].
	^aPane submorphThat: 
			[:m | 
			(m isKindOf: PluggableButtonMorph) and: [m actionSelector == aSelector]]
		ifNone: [^nil]