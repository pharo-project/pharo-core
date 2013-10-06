notifierPaneWidgetAssociation
	"Return the association containing the only subwidget that is not a button.
	Assume there is only one such widget."
	
	^ (self widgets associationsSelect: [ :anAssociation |
		 (anAssociation key asString endsWith: 'Button') not ]) associations first