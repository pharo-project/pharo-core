convertModifiers: modifiers
	| buttons |
	buttons := 0.
	modifiers alt ifTrue: [ buttons := buttons | 2r01000000 ]. "Alt/Option key"
	modifiers ctrl ifTrue: [ buttons := buttons | 2r00010000 ]. "Control key"
	modifiers shift ifTrue: [ buttons := buttons | 8 ]. "Shift key"
	modifiers buttons button1 ifTrue:  [ buttons := buttons | MouseButtonEvent redButton ].
	modifiers buttons button2 ifTrue:  [ buttons := buttons | MouseButtonEvent blueButton ].
	modifiers buttons button3 ifTrue:  [ buttons := buttons | MouseButtonEvent yellowButton ].
	^ buttons