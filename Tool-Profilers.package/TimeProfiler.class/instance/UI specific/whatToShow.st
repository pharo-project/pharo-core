whatToShow
	^ self showLeavesOnly ifTrue: [#'Leaves'] ifFalse: [#'Full tree']