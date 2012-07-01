*Polymorph-Widgets
buttonRowForPreDebugWindow: aDebugWindow
	"Answer a row of button for a pre-debug notifier."
	
	| buttons quads |
	buttons := OrderedCollection with: (AlignmentMorph newVariableTransparentSpacer).
	quads := OrderedCollection withAll: self preDebugButtonQuads.
	(self interruptedContext selector == #doesNotUnderstand:) ifTrue: [
		quads add: { 'Create'. #createMethod. #magenta. 'create the missing method' }].
	quads do: [:quad |
		buttons add: ((PluggableButtonMorph
			on: aDebugWindow
			getState: nil
			action: quad second)
		label: quad first;
		setBalloonText: quad fourth;
		useSquareCorners;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill).
		buttons add: AlignmentMorph newVariableTransparentSpacer].
	^(self theme builder newRow:  buttons)
		cellInset: 2