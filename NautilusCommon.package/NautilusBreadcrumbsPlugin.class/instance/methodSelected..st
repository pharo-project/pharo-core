announcement
methodSelected: anAnnouncement
	| method |
	method := anAnnouncement method.
	methodButton ifNotNil: [ container removeMorph: methodButton ].
	container removeMorph: self hFill.
	methodButton := PluggableButtonMorph new
							actionBlock: [ model ui selectedMethod: method ].
	method ifNotNil: [ 
		methodButton
			label: method selector asString;
			height: 25.
		container addMorph: methodButton ].
	container addMorph: self hFill.