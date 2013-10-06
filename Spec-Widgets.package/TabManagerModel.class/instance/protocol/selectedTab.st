selectedTab

	^ self widget
		ifNil: [ nil ]
		ifNotNil: [ :w || tab |
			tab := w selectedTab.
			self tabModelFor: tab ]