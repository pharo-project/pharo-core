execute
	actionBlock
		cull: table dataSource
		cull: field getTextFromModel
		cull:
			(table selectedRowIndex = 0
				ifFalse: [ table dataSource elementAt: table selectedRowIndex ]
				ifTrue: [ nil ])