construction
customButtonRow
	"Answer a button pane affording the user one-touch access to certain functions; the pane is given the formal name 'customButtonPane' by which it can be retrieved by code wishing to send messages to widgets residing on the pane"

	| buttons buttonsSpec |
	buttons := OrderedCollection new.
	buttonsSpec := OrderedCollection withAll: self customButtonSpecs.

	buttonsSpec add: { 'Create'. #createMethod. 'create the missing method'. #isInterruptedContextDoesNotUnderstand}.
	
	buttonsSpec do: [:buttonSpec | | button |
		button := (PluggableButtonMorph
			on: self
			getState: nil
			action: buttonSpec second)
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			askBeforeChanging: (#(proceed restart send doStep stepIntoBlock fullStack where) includes: buttonSpec second);
			label: buttonSpec first asString;
			setBalloonText: (buttonSpec size > 2 ifTrue: [buttonSpec third]);
			yourself.
		buttonSpec size > 3 ifTrue: [ button getEnabledSelector: buttonSpec fourth].
			
		buttons add: button ].
	
	^(self theme builder newRow:  buttons)
		layoutInset: (0@0 corner: 0@1);
		cellInset: 2