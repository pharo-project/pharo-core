private
addAll: aWindow  withSpec: aSpec

	aWindow
		addMorph: (self buildWithSpec: aSpec)
		fullFrame: (LayoutFrame 
			fractions: (0@0 corner: 1@0) 
			offsets: (0@0 corner: 0@30)).