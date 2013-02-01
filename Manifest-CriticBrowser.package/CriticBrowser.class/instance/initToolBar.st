initialization
initToolBar
	
	self toolbarModel whenFalsePositiveClickedDo: [ self addCriticToFalsePositive ].
	self toolbarModel whenTransformClickedDo: [ self removeSelectedItemFromListModel ].
	
