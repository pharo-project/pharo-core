initialization
initializeWidgets

	self instantiateModels: #(
		fractionField TextInputFieldModel
		fractionLabel LabelModel
		instVars DropListModel
		offsetField TextInputFieldModel
		offsetLabel LabelModel
		selectors DropListModel
		toolbar OkCancelToolbar).
	
	self setFieldsAndLabels.