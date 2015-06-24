selectTheTextForTheNode
	selectionPreviousHighligth := self selectedInterval .
	selectedNode ifNotNil: [ self sourceTextArea contentSelection ]