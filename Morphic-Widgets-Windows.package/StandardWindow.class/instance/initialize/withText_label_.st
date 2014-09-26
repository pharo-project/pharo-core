withText: aStringOrText label: title 
	
	self title: title.
	self 
		addMorph: (PluggableTextMorph on: aStringOrText 
			text: #contents
			accept: nil
			readSelection: nil 
			menu: nil)
	fullFrame: LayoutFrame identity.						
	self themeChanged.
