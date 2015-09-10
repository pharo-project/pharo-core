asMenuMorph
	| prior menu myitems |
	prior := parentMenu.
	parentMenu := menu := self morphClass new.
	self label ifNotNil: [ parentMenu addTitle: self label; addStayUpIcons ].
	myitems := self items.
	myitems do: [ :each | each asMenuItemMorphFrom: parentMenu isLast: each = myitems last ].
	parentMenu := prior.
	^ menu