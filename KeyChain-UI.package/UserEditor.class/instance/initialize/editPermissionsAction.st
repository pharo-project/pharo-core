editPermissionsAction
	| usr editor |
	
	(usr := user contents) ifNil: [ ^ self ].
	usr unlock ifFalse: [ ^ self ].
	
	editor := PermissionsEditor new
				user: usr;
				openDialogWithSpec;
				yourself.
				
	self window openModal: editor window window.