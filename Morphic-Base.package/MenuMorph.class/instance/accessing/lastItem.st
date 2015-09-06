lastItem
	
	^menuItems ifEmpty: [ submorphs last ] ifNotEmpty: [ menuItems last ] 