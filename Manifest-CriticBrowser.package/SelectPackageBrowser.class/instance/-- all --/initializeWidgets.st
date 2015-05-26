initializeWidgets

	super initializeWidgets.	
	self instantiateModels: #(
		addTestCaseClassesModel CheckBoxModel
		removeTestPackageModel ButtonModel).
	self setRemoveTestPackageModel.		
	addTestCaseClassesModel label: 'remove all TestCase Classes'.
	addTestCaseClassesModel state: true.