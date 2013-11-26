select

	self widgetDo: [ :w |
		w changed: #select.
		w model selectionChanged ]