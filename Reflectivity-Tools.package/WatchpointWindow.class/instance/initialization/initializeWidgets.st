initializeWidgets
	| tagName |
	label := self newLabel.
	list := self newList.
	inspectIt := self newButton.
	
	tagName := self watchpoint tagname.
	label label: (tagName isAllSeparators ifTrue: [ 'Unnamed Watchpoint' ] ifFalse: [ tagName ]).
	
	list displayBlock: [ :assoc | assoc value asString].
	self refreshItems.
	
	inspectIt label: 'Inspect ...'.