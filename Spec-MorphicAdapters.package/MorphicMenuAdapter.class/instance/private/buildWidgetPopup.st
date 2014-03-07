buildWidgetPopup

	widget := SpecInterpreter interpretASpec: self class popupSpec model: self.
	widget title: self title. "not sure about this line because the popupSpec since to manage title. But it works like that."
	self menuGroups 
		do: [ :group || items |
			items := group buildWithSpec.
			items do: [ :item | widget addMenuItem: item ] ] 
		separatedBy: [ widget addLine ].
	
	^ widget