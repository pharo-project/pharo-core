dynamicLayout
	"Create a two column layout for the subwidgets. Assume
	there is just one subwidget that is not a button."
	| notifierPaneKey buttonKeys |
	
	buttonKeys := self buttonWidgetsAssociations keys.
	notifierPaneKey := self notifierPaneWidgetAssociation key.

	^ SpecLayout composed
		newColumn: [ :c | 
			c newRow: [ :row |
				buttonKeys do: [ :aKey | row add: aKey ] ] height: self class toolbarHeight.
	  		c newRow: [ :row | row add: notifierPaneKey] ]