inspectionMenu: aMenu
	
	self hasSelectedObject ifFalse: [ ^ aMenu ].
	self useAutoRefresh ifFalse: [ 
		self refreshSubMenu: aMenu ].
	super inspectionMenu: aMenu.