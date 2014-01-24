initializeWidgets

	models := self instantiate: ModelList.
	protocols := self instantiate: ProtocolList.
	events := self instantiate: ProtocolList.
	
	protocols
		label: 'protocol';
		displayBlock: [ :m | m selector ].
	events
		label: 'protocol-events';
		displayBlock: [ :m | m selector ].
		
	self focusOrder 
		add: models;
		add: protocols;
		add: events
		