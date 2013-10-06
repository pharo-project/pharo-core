initializeWidgets

	self instantiateModels: #(
		dateLabel LabelModel
		dateModel TextInputFieldModel
		chooseDateButton ButtonModel).
	
	dateLabel
		text: 'Date'.
		
	self date: Date today.
	dateModel
		isCodeCompletionAllowed: false.
	
	chooseDateButton
		label: self iconMorph;
		action: [ self chooseDate ];
		extent: self iconMorph extent.