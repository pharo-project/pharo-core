copySelectedItemAccessorCode
	self hasSelectedObject
		ifFalse: [ ^ self ].
	self selectedItem copyAccessorCode.