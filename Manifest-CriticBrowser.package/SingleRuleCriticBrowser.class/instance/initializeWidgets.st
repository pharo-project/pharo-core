initialization
initializeWidgets

	self instantiateModels: #(
		criticsModel IconListModel
		sourceCodeModel TextModel 
		toolbarModel CriticToolbar ).

	criticsModel beMultipleSelection.
		
	self initializeTextInputFieldModel.
	self initializeToolBar.
	self initializeActionToPerformOnTextModel.

	criticsModel displayBlock: [:selec |
		self 
			initializeDisplayCritic: selec 
			forRuleId: (rule class uniqueIdentifierName)
			versionId: (rule class identifierMinorVersionNumber) ]. 
	
	criticsModel menu: [:a :b | self menu: a shifted: b ].
	criticsModel icons: [:item | self iconFor: item ].
	
	self focusOrder
		add: criticsModel;
		add: toolbarModel;
		add: sourceCodeModel.
