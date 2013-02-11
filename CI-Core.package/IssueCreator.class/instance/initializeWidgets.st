initialization
initializeWidgets 

	self instantiateModels: #(
		title 			TextInputFieldModel
		description 	TextModel 
		type 			DropListModel ).
					
	title 
		ghostText: 'Title';
		autoAccept: true;
		keyStrokeForNextFocus: Character tab asShortcut;
		keyStrokeForPreviousFocus: Character tab shift asShortcut;
		entryCompletion: nil;
		isCodeCompletionAllowed: false.
		
	type 
		items: self createTypes;
		keyStrokeForNextFocus: Character tab asShortcut;
		keyStrokeForPreviousFocus: Character tab shift asShortcut.
	
	description
		isCodeCompletionAllowed: false;
		text: 'ENTER DESCRIPTION HERE';
		readSelectionBlock: [ (0 to: 22) ];
		acceptBlock: [ description readSelectionBlock: [ (1 to: 0) ]]