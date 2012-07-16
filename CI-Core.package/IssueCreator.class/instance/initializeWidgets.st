initialization
initializeWidgets 

	self instantiateModels: #(
		title 			TextInputFieldModel
		description 	TextModel 
		type 			DropListModel ).
					
	title 
		ghostText: 'Title';
		autoAccept: true;
		isEventForNextFocusBlock: [:ev | ev keyString = '<tab>' ];
		isEventForPreviousFocusBlock: [:ev | ev keyString = '<Shift-tab>' ];
		entryCompletion: nil.
		
	type 
		items: self createTypes;
		isEventForNextFocusBlock: [:ev | ev keyString = '<tab>' ];
		isEventForPreviousFocusBlock: [:ev | ev keyString = '<Shift-tab>' ].
	
	description 
		text: 'ENTER DESCRIPTION HERE';
		readSelectionBlock: [ (0 to: 22) ];
		acceptBlock: [ description readSelectionBlock: [ (1 to: 0) ]]