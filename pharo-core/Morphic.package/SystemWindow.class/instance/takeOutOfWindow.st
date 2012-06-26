menu
takeOutOfWindow
	"Take the receiver's pane morph out the window and place it, naked, where once the window was"
	| aMorph |
	paneMorphs size = 1 ifFalse: [^ Beeper beep].
	aMorph := paneMorphs first.
	owner addMorphFront: aMorph.
	self delete