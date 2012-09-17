initialization
initializeDialogWindow: aWindow

	aWindow okAction: [
		description accept.
		self issue ifNotNil: [:i || t desc |
			t := title getText.
			desc := description getText asString.
			(t notEmpty and: [ desc notEmpty])
				ifTrue: [
					self issue 
						labels: { type selectedItem label. 'Milestone-', SystemVersion current dottedMajorMinor };
						title: t;
						description: desc ]]].
			
	self focusOrder
		add: title;
		add: type;
		add: description;
		add: aWindow toolbar
				
	