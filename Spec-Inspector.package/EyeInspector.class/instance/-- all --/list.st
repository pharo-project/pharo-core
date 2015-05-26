list
	^ list ifNil: [ 
		list := self instantiate: NewListModel.
		list 
			handlesDoubleClick: true;
			whenSelectedItemChanged: [ :item |
				self refreshDescription: item ];
			doubleClickAction: [ self diveIntoSelectedObject ]. ]