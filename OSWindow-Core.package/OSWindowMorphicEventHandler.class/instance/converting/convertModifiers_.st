convertModifiers: modifiers
	| buttons |
	buttons := 0.
	"Alt/Option key"
	modifiers alt ifTrue: [
		"On windows, treat alt key as command key"
		Smalltalk os isWin32 
			ifTrue: [ buttons := buttons | 2r01000000 ]
			ifFalse: [ buttons := buttons | 2r00100000 ]
	]. 
	
	modifiers ctrl ifTrue: [ buttons := buttons | 2r00010000 ]. "Control key"
	modifiers shift ifTrue: [ buttons := buttons | 8 ]. "Shift key"
	modifiers cmd ifTrue: [ buttons := buttons | 2r01000000 ]. "Cmd key"
	
	modifiers buttons button1 ifTrue:  [ buttons := buttons | MouseButtonEvent redButton ].
	modifiers buttons button2 ifTrue:  [ buttons := buttons | MouseButtonEvent blueButton ].
	modifiers buttons button3 ifTrue:  [ buttons := buttons | MouseButtonEvent yellowButton ].
	^ buttons