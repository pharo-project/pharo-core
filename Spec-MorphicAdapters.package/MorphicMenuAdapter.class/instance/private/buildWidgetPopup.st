buildWidgetPopup
	widget := self basicMenuPopUp.
	self menuGroups
		do: [ :group | 
			| items |
			items := group buildWithSpec.
			items do: [ :item | widget addMenuItem: item ] ]
		separatedBy: [ widget addLine ].
	^ widget