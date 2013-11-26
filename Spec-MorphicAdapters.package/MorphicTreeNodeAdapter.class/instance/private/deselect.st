deselect

	self widgetDo: [ :w |
		w changed: #deselect.
		w model selectionChanged ]