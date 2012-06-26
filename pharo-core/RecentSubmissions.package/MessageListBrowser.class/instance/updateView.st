display
updateView
	self model 
		ifNotNil: [:m |
			self changed: #dictionary.
			self changed: #originalList.
			m reSort.
			self updateTree]
