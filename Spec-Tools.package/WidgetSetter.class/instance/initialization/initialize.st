initialize

	model := nil asValueHolder.
	model
		whenChangedDo: [ :m | 
			| max |
			self updateTitle.
			apiSetters items: self retrieveItems.
			max := (apiSetters listItems collect: [ :e | self widthFor: e method ]) ifEmpty: [ 0 ] ifNotEmpty: [ :l | l max ].
			apiSetters listItems do: [ :e | e selectorWidth: max ] ].
	super initialize.
	
	self announcer
		on: WidgetBuilt
		send: #registerEvents
		to: self.