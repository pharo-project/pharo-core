initializeWidgets 

	self  instantiateModels: #( 
		text 	TextInputFieldModel
		ok 		ButtonModel ).

	text
		autoAccept: false;
		entryCompletion: nil;
		acceptBlock: [ self okAction ];
		ghostText: 'st code'.
		
	ok 
		label: 'ok';
		state: false;
		enabled: true;
		action: [ self okAction ].
		
	self focusOrder 
		add: text;
		add: ok