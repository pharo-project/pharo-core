menu: aMenu shifted: aBoolean 
	
	self model showGroups
			ifTrue: [self model groupsMenu: aMenu shifted: aBoolean]
			ifFalse: [self model packagesMenu: aMenu shifted: aBoolean].
	^ aMenu