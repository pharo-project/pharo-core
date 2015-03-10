initializeWidgets

	self instantiateModels: #(
		dateLabel LabelModel
		dateModel TextInputFieldModel
		chooseDateButton ButtonModel).
	
	dateLabel
		label: 'Date'.
		
	dateModel
		text: Date today asString;
		isCodeCompletionAllowed: false.
	
	chooseDateButton
		icon: self iconMorph;
		action: [ self chooseDate ];
		extent: self iconMorph extent.