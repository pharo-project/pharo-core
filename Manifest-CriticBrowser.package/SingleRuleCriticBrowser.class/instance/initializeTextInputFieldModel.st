initialization
initializeTextInputFieldModel
	|critics|
	
	textInputFieldModel := self instantiate: TextInputFieldModel.
	textInputFieldModel 
		autoAccept: true;
		ghostText: 'Search field';
		removeEntryCompletion.
	critics := criticsModel listItems.
	textInputFieldModel acceptBlock: [: text | |matchText|
		matchText := '*', text, '*'.
		self criticsOf: (text isEmpty 
			ifTrue: [critics]
			ifFalse: [ critics select: [:critic |
				matchText match: (self formatCritic: critic)]]).
			self updateList]
