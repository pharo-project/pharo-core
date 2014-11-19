optionalButtonRow
	"Answer a row of control buttons"
	
	| buttons |
	buttons := OrderedCollection new.
	self optionalButtonPairs
		do: [:tuple |
			buttons add: ((PluggableButtonMorph
					on: self
					getState: nil
					action: tuple second)
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				label: tuple first asString;
				setBalloonText: (tuple size > 2 ifTrue: [tuple third]);
				triggerOnMouseDown: (tuple size > 3
					ifTrue: [tuple fourth]
					ifFalse: [false]))].
	buttons add: self codePaneProvenanceButton.
	^(self theme builder newRow:  buttons)
		setNameTo: 'buttonPane';
		cellInset: 2