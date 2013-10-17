deleteMe
	| name |
	
	name := self text getText.
	self validated: false.
	self widgets removeAll.
	self initializeWidgets.
	self model ifNotNil: [:m | m removeInstVar: name ].
	self needFullRebuild: false.
	self buildWithSpec.
	