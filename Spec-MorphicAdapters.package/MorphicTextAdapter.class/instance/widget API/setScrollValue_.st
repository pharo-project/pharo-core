setScrollValue: aValue
	self
		widgetDo: [ :w | 
			w scrollPane
				hScrollbarValue: aValue x;
				hScrollbarValue: aValue y ]