editPermissionsAction
	| usr editor |
	
	(usr := user value) ifNil: [ ^ self ].
	usr unlock ifFalse: [ ^ self ].
	
	editor := PermissionsEditor new
				user: usr;
				openDialogWithSpec;
				yourself.
				
	self window openModal: editor window window.