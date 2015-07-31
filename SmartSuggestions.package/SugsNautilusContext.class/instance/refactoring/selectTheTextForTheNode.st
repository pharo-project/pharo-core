selectTheTextForTheNode
	selectionPreviousHighligth := self selectedInterval .
	selectedNode ifNotNil: [ model contentSelection ]