selectTheTextForTheNode
	selectedNode ifNotNil: [ self sourceTextArea selectFrom: self nodeStart to: self nodeStop]