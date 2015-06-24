updateOnClassSelection
	| previousMethod |
	previousMethod := self methodWidget selectedMethods ifNotEmpty: [ :c | c first ] ifEmpty: [ nil ].	"note that the model of nautilus is not consistent with the widget hence we cannot write selection: self selectedMethod"
	self changed: #hierarchyButtonEnabled.
	self setWindowTitle.
	self resetCategoriesListSelection.
	self resetMethodsListSelection.
	self updateCategoryAndMethodList.
	self changed: #isAClassSelected.
	self changed: #instanceButtonLabel.
	self selectedClass
		ifNil: [ ^ self ]
		ifNotNil: [ :class | 
			class hasComment
				ifTrue: [ self classCommentTextModel setInitialText: class comment ]
				ifFalse: [ self classCommentTextModel setInitialText: class classCommentBlank ] ]