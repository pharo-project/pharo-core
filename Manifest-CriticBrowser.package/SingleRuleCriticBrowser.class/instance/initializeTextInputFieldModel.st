initialization
initializeTextInputFieldModel
	textInputFieldModel := self instantiate: TextInputFieldModel.
	textInputFieldModel 
		autoAccept: true;
		ghostText: 'Search field';
		removeEntryCompletion.

	
	textInputFieldModel acceptBlock: [: text | |matchText|
		matchText := '*', text, '*'.
		self critics: (text isEmpty 
			ifTrue: [critics]
			ifFalse: [ critics select: [:critic |
				matchText match: (self formatCritic: critic)]]).
		self updateList]
