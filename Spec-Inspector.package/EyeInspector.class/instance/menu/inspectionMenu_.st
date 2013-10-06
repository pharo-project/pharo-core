inspectionMenu: aMenu
	
	self selectedElement ifNil: [ ^ aMenu ].
	self useAutoRefresh ifFalse: [ 
		self refreshSubMenu: aMenu ].
	self inspectionSubMenu: aMenu.
	self selectedElement inspectionMenu: aMenu.
	^aMenu