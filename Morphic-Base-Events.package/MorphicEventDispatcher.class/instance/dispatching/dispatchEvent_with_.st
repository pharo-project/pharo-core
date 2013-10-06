dispatchEvent: anEvent with: aMorph
	"Dispatch the given event for a morph that has chosen the receiver to dispatch its events. The method implements a shortcut for repeated dispatches of events using the same dispatcher."
	anEvent type == lastType ifTrue:[^self perform: lastDispatch with: anEvent with: aMorph].
	"Otherwise classify"
	lastType := anEvent type.
	anEvent isMouse ifTrue:[
		anEvent isMouseDown ifTrue:[
			lastDispatch := #dispatchMouseDown:with:.
			^self dispatchMouseDown: anEvent with: aMorph]].
	anEvent type == #dropEvent ifTrue:[
		lastDispatch := #dispatchDropEvent:with:.
		^self dispatchDropEvent: anEvent with: aMorph].
	anEvent isWindowEvent ifTrue:[
		lastDispatch := #dispatchWindowEvent:with:.
		^self dispatchWindowEvent: anEvent with: aMorph].	
	lastDispatch := #dispatchDefault:with:.
	^self dispatchDefault: anEvent with: aMorph