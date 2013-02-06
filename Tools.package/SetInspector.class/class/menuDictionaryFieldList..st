menu
menuDictionaryFieldList: aBuilder
	<contextMenu>
	<setInspectorFieldListMenu>
	
	(aBuilder item: #'Inspect')
		selector: #inspectSelection.
	(aBuilder item: #'Copy name')
		selector: #copyName.
	(aBuilder item: #'Refresh view')
		selector: #update.
	(aBuilder item: #'Remove')
		selector: #removeSelection.
	(aBuilder item: #'Basic inspect')
		selector: #inspectBasic.
